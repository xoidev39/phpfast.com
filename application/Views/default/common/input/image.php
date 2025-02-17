<?php 
$value_decode = is_string($value) ? json_decode($value, true) : $value;
?>
<div class="fieldset px-1 w-full mb-8 wrap-<?= $name ?>" style="<?= $visibility ? 'width:' . $width_value . $width_unit . ';' : 'display:none;' ?>">
    <?php if ($label): ?>
        <label class="block mb-4 font-medium text-sm leading-5 text-gray-900">
            <?= $label ?><?= $required ? '<span class="text-red-500">*</span>' : '' ?>
        </label>
    <?php endif; ?>

    <!-- Upload Area -->
    <div id="upload-area-<?= $name ?>" class="flex flex-col items-center justify-center w-full h-48 p-4 rounded-lg border-2 border-dashed border-gray-300 bg-gray-50" style="<?= (!empty($value_decode) && !$multiple ) ? 'display: none;' : ''; ?>">
        <div class="text-center cursor-pointer" id="open-library-button-<?= $name ?>">
            <div class="flex justify-center text-gray-400 mb-4">
                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M11 34C6.02944 34 2 29.9706 2 25C2 21.0368 4.56168 17.6719 8.11959 16.4708C8.04092 15.9922 8 15.5009 8 15C8 10.0294 12.0294 6 17 6C20.2808 6 23.1515 7.75543 24.7243 10.3783C25.4377 10.1331 26.2033 10 27 10C30.866 10 34 13.134 34 17C34 17.6667 33.9068 18.3116 33.7327 18.9224C36.2706 20.2636 38 22.9298 38 26C38 30.4183 34.4183 34 30 34H11ZM19.25 28.5C19.25 28.9142 19.5858 29.25 20 29.25C20.4142 29.25 20.75 28.9142 20.75 28.5V17.4099L25.9504 23.0103C26.2323 23.3139 26.7068 23.3314 27.0103 23.0496C27.3139 22.7677 27.3314 22.2932 27.0496 21.9897L20.5496 14.9897C20.4077 14.8368 20.2086 14.75 20 14.75C19.7914 14.75 19.5923 14.8368 19.4504 14.9897L12.9504 21.9897C12.6686 22.2932 12.6861 22.7677 12.9897 23.0496C13.2932 23.3314 13.7677 23.3139 14.0496 23.0103L19.25 17.4099V28.5Z" fill="#6B7280"/>
                </svg>
            </div>
            <p class="text-gray-700 text-center text-sm font-medium leading-5 mb-2">
                Click để chọn ảnh từ thư viện
            </p>
            <div class="inline-block px-4 py-2 text-xs text-white bg-blue-600 rounded-md cursor-pointer">
                Chọn từ Thư viện
            </div>
        </div>
    </div>

    <input type="hidden" id="<?= $name ?>_data" name="<?= $name ?>" value='<?= $value ?>'>
    <?php if($multiple == 1) {?>
        <div id="multi-preview-area-<?= $name ?>" class="<?= empty($value_decode) ? 'hidden' : ''; ?> mt-6">
        </div>
    <?php } else { 
        if(!empty($value_decode)) {
            $url_image = base_url('uploads/') . $value_decode['path']; 
        }
        ?>
        <!-- Preview Section -->
        <div id="preview-area-<?= $name ?>" class="<?= empty($value_decode) ? 'hidden' : ''; ?> mt-6">
            <div class="flex items-center justify-between w-full p-4 rounded-lg bg-gray-50">
                <div class="flex items-center">
                    <img id="image-preview-<?= $name ?>" src="<?= $url_image ?? ''; ?>" alt="Preview" class="w-20 h-20 mr-4 rounded-lg object-cover">
                    <div>
                        <p id="image-name-<?= $name ?>" class="font-semibold text-gray-700"><?= $value_decode['name'] ?? ''; ?></p>
                        <p id="image-size-<?= $name ?>" class="text-gray-500 text-sm"></p>
                    </div>
                </div>
                <div class="flex items-center space-x-4">
                    <div id="replace-button-<?= $name ?>" class="text-blue-600 text-sm font-medium leading-5 cursor-pointer">
                        Thay thế
                    </div>
                    <div id="remove-button-<?= $name ?>" class="text-gray-600 cursor-pointer">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>


    

    <?php if ($description): ?>
        <p class="text-gray-500 text-sm mt-1"><?= $description ?></p>
    <?php endif; ?>

    <?php if (!empty($error_message)): ?>
        <?php if (is_array($error_message)): ?>
            <?php foreach ($error_message as $error): ?>
                <p class="text-red-500 text-sm mt-1"><?= xss_clean($error) ?></p>
            <?php endforeach; ?>
        <?php else: ?>
            <p class="text-red-500 text-sm mt-1"><?= xss_clean($error_message) ?></p>
        <?php endif; ?>
    <?php endif; ?>
</div>

<!-- Modal -->
<div id="file-manager-modal-<?= $name ?>" class="fixed inset-0 z-50 hidden overflow-y-auto">
    <div class="flex items-center justify-center min-h-screen px-4">
        <!-- Backdrop -->
        <div class="fixed inset-0 bg-black bg-opacity-50 transition-opacity"></div>
        
        <!-- Modal Content -->
        <div class="relative bg-white rounded-lg w-full max-w-7xl !h-[80vh] max-h-[90vh] flex flex-col">
            <!-- Modal Header -->
            <div class="flex items-center justify-between p-4 border-b">
                <h3 class="text-xl font-semibold text-gray-900">Thư viện Media</h3>
                <button type="button" class="modal-close text-gray-400 hover:text-gray-500">
                    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
            
            <!-- Modal Body -->
            <div class="flex-1 overflow-hidden">
                <iframe id="file-manager-iframe-<?= $name ?>" 
                        class="w-full h-full"
                        src="about:blank"
                        frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>

<?php if($multiple_server && !empty($servers)): ?>
    <div class="mb-6">
        <!-- Label với icon -->
        <label for="server-select-<?= $name ?>" class="flex items-center gap-2 mb-2 text-sm font-medium text-gray-900">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2"/>
            </svg>
            Chọn server upload
        </label>

        <!-- Select container với custom styling -->
        <div class="relative">
            <select 
                id="server-select-<?= $name ?>" 
                class="appearance-none bg-white border border-gray-300 text-gray-900 text-sm rounded-lg 
                       block w-full px-4 py-2.5 pr-10
                       focus:ring-2 focus:ring-blue-500/20 focus:border-blue-500 
                       hover:border-blue-500/50 transition-colors duration-200
                       cursor-pointer shadow-sm"
            >
                <!-- Server mặc định -->
                <option value="false" class="py-2">
                    🖥️ Server mặc định
                </option>
                
                <?php foreach($servers as $server): ?>
                    <option 
                        value="<?= $server['url'] ?>" 
                        data-token="<?= $server['token'] ?>"
                        class="py-2"
                    >
                        🌐 <?= $server['name'] ?? $server['url'] ?>
                    </option>
                <?php endforeach; ?>
            </select>

            <!-- Custom arrow indicator -->
            <div class="absolute inset-y-0 right-0 flex items-center px-2 pointer-events-none">
                <svg class="w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"/>
                </svg>
            </div>
        </div>

        <!-- Subtle helper text -->
        <p class="mt-1.5 text-xs text-gray-500">
            Chọn server để lưu trữ và quản lý tập tin của bạn
        </p>
    </div>
<?php endif; ?>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const fieldId = "<?= $name ?>"; 
        initImages(fieldId, <?= ($multiple == 1) ? 'true' : 'false' ?>, <?= $value ?>);
    });

</script>