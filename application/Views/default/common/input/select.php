<?php
/**
 * Giả sử các biến truyền vào:
 * - $multiple: bool|int (nếu true/1 => multi-select, ngược lại single)
 * - $name, $id, $label, $description, $error_message, $visibility, $width_value, $width_unit, $required, $css_class
 * - $value: 
 *     + Với single-select có thể là chuỗi/string.
 *     + Với multi-select bây giờ là một chuỗi JSON, ví dụ: '["id_1","id_2"]'.
 * - $options: mảng các option, mỗi option gồm ['value'=>'','label'=>''].
 */

// Kiểm tra multiple
if (!empty($multiple)) {
    // MULTI-SELECT (lưu dưới dạng JSON)

    // 1. Giải mã $value từ JSON ra mảng
    $selectedValues = [];
    if (!empty($value) && is_string($value)) {
        $temp = json_decode($value, true);
        if (is_array($temp)) {
            $selectedValues = $temp;
        }
    }

    // 2. In layout multi-select
    ?>
    <!-- MULTI-SELECT LAYOUT VỚI JSON -->
    <div 
        class="field px-1 w-full mb-6 wrap-<?= htmlspecialchars($name) ?>" 
        style="<?= $visibility ? 'width:' . htmlspecialchars($width_value) . htmlspecialchars($width_unit) . ';' : 'display:none;' ?>"
    >
        <?php if (!empty($label)): ?>
            <label for="<?= htmlspecialchars($id) ?>" class="block mb-3 text-lg font-semibold text-gray-700">
                <?= htmlspecialchars($label) ?>
                <?= $required ? '<span class="text-red-500 ml-1">*</span>' : '' ?>
            </label>
        <?php endif; ?>

        <!-- Input search -->
        <div class="relative mb-4">
            <input
                type="text"
                id="search-<?= htmlspecialchars($id) ?>"
                class="w-full border border-gray-300 rounded-md p-3 pr-12 focus:outline-none focus:ring-2 focus:ring-blue-500 <?= htmlspecialchars($css_class) ?>"
                placeholder="Tìm kiếm..."
                autocomplete="off"
            />
            <!-- Icon search -->
            <div class="absolute inset-y-0 right-3 flex items-center pointer-events-none">
                <svg class="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M21 21l-4.35-4.35M17 11a6 6 0 11-12 0 6 6 0 0112 0z"/>
                </svg>
            </div>
            
            <!-- Dropdown hiển thị list option -->
            <div
                id="dropdown-<?= htmlspecialchars($id) ?>"
                class="absolute z-20 w-full bg-white border border-gray-300 rounded-md mt-1 shadow-lg max-h-60 overflow-y-auto hidden transition-all duration-200 ease-in-out"
            >
                <?php if (empty($options)): ?>
                    <div class="p-4 text-center text-gray-500">
                        Not available
                    </div>
                <?php else: ?>
                    <?php foreach ($options as $opt):
                        $optValue = htmlspecialchars($opt['value'] ?? '', ENT_QUOTES, 'UTF-8');
                        $optLabel = htmlspecialchars($opt['label'] ?? '', ENT_QUOTES, 'UTF-8');
                        $checked  = in_array($optValue, $selectedValues) ? 'checked' : '';
                        ?>
                        <label class="flex items-center px-3 py-2 hover:bg-blue-50 cursor-pointer rounded-md space-x-2">
                            <input
                                type="checkbox"
                                class="form-checkbox !h-4 !w-4 text-blue-600 focus:ring-blue-500"
                                value="<?= $optValue ?>"
                                data-label="<?= $optLabel ?>"
                                <?= $checked ?>
                                onchange="updateSelectionJSON('<?= htmlspecialchars($id) ?>')"
                            />
                            <span class="text-gray-700"><?= $optLabel ?></span>
                        </label>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </div>

        <!-- Khu vực hiển thị các item đã chọn (tags) -->
        <div class="flex flex-wrap gap-2" id="selected-display-<?= htmlspecialchars($id) ?>"></div>

        <!-- Thẻ <select> ẩn (optional - chỉ cần nếu form cần submit dạng select) -->
        <select
            id="<?= htmlspecialchars($id) ?>"
            name="<?= htmlspecialchars($name) ?>[]"
            multiple
            class="hidden"
            <?= $required ? 'required' : '' ?>
        >
            <?php foreach ($options as $opt):
                $optValue  = htmlspecialchars($opt['value'] ?? '', ENT_QUOTES, 'UTF-8');
                $optLabel  = htmlspecialchars($opt['label'] ?? '', ENT_QUOTES, 'UTF-8');
                $isSelected = in_array($optValue, $selectedValues) ? 'selected' : '';
                ?>
                <option value="<?= $optValue ?>" <?= $isSelected ?>><?= $optLabel ?></option>
            <?php endforeach; ?>
        </select>

        <!-- Input hidden lưu JSON -->
        <?php 
        // 3. Chuyển mảng đã chọn về JSON (nếu cần hiển thị sẵn):
        $selectedJson = json_encode($selectedValues, JSON_UNESCAPED_UNICODE);
        ?>
        <input
            type="hidden"
            id="hidden-<?= htmlspecialchars($id) ?>"
            name="<?= htmlspecialchars($name) ?>_json" 
            value="<?= htmlspecialchars($selectedJson, ENT_QUOTES, 'UTF-8') ?>"
        />

        <?php if (!empty($description)): ?>
            <p class="mt-3 text-sm text-gray-500"><?= htmlspecialchars($description, ENT_QUOTES, 'UTF-8') ?></p>
        <?php endif; ?>

        <!-- Xử lý hiển thị lỗi -->
        <?php
        if (!empty($error_message)) {
            if (is_array($error_message)) {
                foreach ($error_message as $error) {
                    echo '<p class="mt-2 text-sm text-red-500">' . htmlspecialchars($error, ENT_QUOTES, 'UTF-8') . '</p>';
                }
            } elseif (is_string($error_message)) {
                echo '<p class="mt-2 text-sm text-red-500">' . htmlspecialchars($error_message, ENT_QUOTES, 'UTF-8') . '</p>';
            }
        }
        ?>
    </div>

    <!-- JS xử lý multi-select (JSON) -->
    <script>
        function updateSelectionJSON(id) {
            const dropdown   = document.getElementById('dropdown-' + id);
            const checkboxes = dropdown.querySelectorAll('input[type="checkbox"]');
            const select     = document.getElementById(id);
            const display    = document.getElementById('selected-display-' + id);
            const hiddenJSON = document.getElementById('hidden-' + id);

            // Clear nội dung cũ
            select.innerHTML  = '';
            display.innerHTML = '';

            let selectedArr = []; // Mảng lưu value

            checkboxes.forEach(chk => {
                if (chk.checked) {
                    const val   = chk.value;
                    const label = chk.getAttribute('data-label') || val;
                    selectedArr.push(val);

                    // Tạo option cho <select> ẩn
                    const opt = document.createElement('option');
                    opt.value    = val;
                    opt.selected = true;
                    opt.text     = label;
                    select.appendChild(opt);

                    // Tạo tag hiển thị
                    const tag = document.createElement('span');
                    tag.className = 'inline-flex items-center px-3 py-1 bg-blue-100 text-blue-800 rounded-full text-sm';
                    tag.innerHTML = label + 
                        '<button type="button" class="ml-2 text-blue-500 hover:text-blue-700 focus:outline-none" onclick="removeSelectionJSON(\''+ id +'\', \''+ val +'\')">&times;</button>';
                    display.appendChild(tag);
                }
            });

            // Cập nhật input hidden dưới dạng JSON
            hiddenJSON.value = JSON.stringify(selectedArr);
        }

        function removeSelectionJSON(id, value) {
            // Bỏ check cho checkbox tương ứng, rồi cập nhật
            const dropdown   = document.getElementById('dropdown-' + id);
            const checkboxes = dropdown.querySelectorAll('input[type="checkbox"]');
            checkboxes.forEach(chk => {
                if (chk.value === value) {
                    chk.checked = false;
                }
            });
            updateSelectionJSON(id);
        }

        function handleSearchJSON(id, query) {
            const dropdown = document.getElementById('dropdown-' + id);
            const labels   = dropdown.querySelectorAll('label');
            const lowerQ   = query.toLowerCase();
            let anyVisible = false;

            labels.forEach(lbl => {
                const text = lbl.textContent.toLowerCase();
                if (text.includes(lowerQ)) {
                    lbl.classList.remove('hidden');
                    anyVisible = true;
                } else {
                    lbl.classList.add('hidden');
                }
            });

            // Hiển thị "No results found" nếu không tìm thấy
            let noResults = document.getElementById('no-results-' + id);
            if (!anyVisible && query.trim() !== '') {
                if (!noResults) {
                    noResults = document.createElement('div');
                    noResults.id = 'no-results-' + id;
                    noResults.className = 'px-4 py-2 text-gray-500';
                    noResults.textContent = 'No results found.';
                    dropdown.appendChild(noResults);
                }
            } else {
                if (noResults) {
                    noResults.remove();
                }
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            const searchInput = document.getElementById('search-<?= htmlspecialchars($id) ?>');
            const dropdown    = document.getElementById('dropdown-<?= htmlspecialchars($id) ?>');

            // Khởi tạo hiển thị các item đã chọn
            updateSelectionJSON('<?= htmlspecialchars($id) ?>');

            if (searchInput) {
                // Click vào ô search => mở dropdown
                searchInput.addEventListener('click', function(e) {
                    e.stopPropagation();
                    dropdown.classList.remove('hidden');
                    this.focus();
                });
                // Gõ text => filter
                searchInput.addEventListener('input', function() {
                    handleSearchJSON('<?= htmlspecialchars($id) ?>', this.value);
                });
                // Click ngoài => đóng
                document.addEventListener('click', function(e) {
                    if (!searchInput.contains(e.target) && !dropdown.contains(e.target)) {
                        dropdown.classList.add('hidden');
                    }
                });
                // Nhấn ESC => đóng
                searchInput.addEventListener('keydown', function(e) {
                    if (e.key === 'Escape') {
                        dropdown.classList.add('hidden');
                        searchInput.blur();
                    }
                });
            }
        });
    </script>

<?php
} else {
    // SINGLE SELECT (giữ nguyên kiểu cũ hoặc cũng có thể chuyển sang JSON nếu muốn).
    // Ở đây ví dụ vẫn để single-select bình thường.
    ?>
    <!-- SINGLE-SELECT LAYOUT -->
    <div 
        class="field px-1 floating-label mb-6 relative wrap-<?= htmlspecialchars($name) ?>"
        style="<?= $visibility ? 'width:' . htmlspecialchars($width_value) . htmlspecialchars($width_unit) . ';' : 'display:none;' ?>"
    >
        <?php if (!empty($label)): ?>
            <label for="<?= htmlspecialchars($id) ?>" class="block mb-2 text-sm font-medium text-gray-700">
                <?= htmlspecialchars($label) ?>
                <?= $required ? '<span class="text-red-500 ml-1">*</span>' : '' ?>
            </label>
        <?php endif; ?>

        <select
            id="<?= htmlspecialchars($id) ?>"
            name="<?= htmlspecialchars($name) ?>"
            class="block w-full pl-3 pr-10 py-2 text-base border-gray-300 bg-white focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md <?= htmlspecialchars($css_class) ?>"
            <?= $required ? 'required' : '' ?>
        >
            <?php
            // Giả sử single select => $value là 1 chuỗi
            $currentValue = (string)$value;
            foreach ($options as $opt):
                $optValue = htmlspecialchars($opt['value'] ?? '', ENT_QUOTES, 'UTF-8');
                $optLabel = htmlspecialchars($opt['label'] ?? '', ENT_QUOTES, 'UTF-8');
                $selected = ($optValue === $currentValue) ? 'selected' : '';
                ?>
                <option value="<?= $optValue ?>" <?= $selected ?>><?= $optLabel ?></option>
            <?php endforeach; ?>
        </select>

        <?php if (!empty($description)): ?>
            <p class="mt-2 text-sm text-gray-500"><?= htmlspecialchars($description, ENT_QUOTES, 'UTF-8') ?></p>
        <?php endif; ?>

        <?php
        // Hiển thị lỗi
        if (!empty($error_message)) {
            if (is_array($error_message)) {
                foreach ($error_message as $error) {
                    echo '<p class="mt-2 text-sm text-red-500">' . htmlspecialchars($error, ENT_QUOTES, 'UTF-8') . '</p>';
                }
            } elseif (is_string($error_message)) {
                echo '<p class="mt-2 text-sm text-red-500">' . htmlspecialchars($error_message, ENT_QUOTES, 'UTF-8') . '</p>';
            }
        }
        ?>
    </div>
<?php } ?>
