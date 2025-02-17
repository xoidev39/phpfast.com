
<div class="w-full px-1 field floating-label mb-4 relative wrap-<?= $name ?>" style="<?= $visibility ? 'width:' . $width_value . $width_unit . ';' : 'display:none;' ?>">
    <?php if ($label): ?>
        <label for="<?= $id ?>" class="block mb-2 font-medium text-sm leading-5 text-gray-900">
            <?= $label ?><?= $required ? '<span class="text-red-500">*</span>' : '' ?>
        </label>
    <?php endif; ?>

    <div class="radio-type1 form-label bg-white pb-0">
        <div class="flex">
            <?php
            foreach ($options as $option):
                $option_value = xss_clean($option['value'] ?? '');
                $option_label = xss_clean($option['label'] ?? '');
                $checked = ($option_value == $value) ? 'checked' : '';
            ?>
                <div class="flex items-center me-2 mt-2">
                    <input
                        id="<?= $name ?>-<?= $option_value ?>"
                        type="radio"
                        name="<?= $name ?>"
                        value="<?= $option_value ?>"
                        <?= $checked ?>
                        <?= $required ? 'required' : '' ?>
                        class="focus:ring-blue-500 focus:border-blue-500 <?= $css_class ?>"
                    >
                    <label for="<?= $name ?>-<?= $option_value ?>" class="ml-1">
                        <?= $option_label ?>
                    </label>
                </div>
            <?php endforeach; ?>
        </div>
        <?php if ($description): ?>
            <p class="text-gray-500 text-sm -mt-2">
                <?= $description ?>
            </p>
        <?php endif; ?>
    </div>
    <?php 
    if (!empty($error_message)) {
        if (is_array($error_message)) {
            foreach ($error_message as $error): ?>
                <p class="text-red-500 text-sm mt-1">
                    <?= xss_clean($error) ?>
                </p>
            <?php endforeach;
        } elseif (is_string($error_message)) {
            echo '<p class="text-red-500 text-sm mt-1">' . xss_clean($error_message) . '</p>';
        }
    }
    ?>
</div>
