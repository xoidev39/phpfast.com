<!-- common/input/wysiwyg.php -->
<div class="w-full px-1 field floating-label mb-4 relative wrap-<?= $name ?>" style="<?= $visibility ? 'width:' . $width_value . $width_unit . ';' : 'display:none;' ?>">
    <?php if ($label): ?>
        <label for="<?= $id ?>" class="block mb-2 font-medium text-sm leading-5 text-gray-900">
            <?= $label ?><?= $required ? '<span class="text-red-500">*</span>' : '' ?>
        </label>
    <?php endif; ?>


    <div id="<?= $id ?>" class="form-label bg-white <?= $css_class ?>"></div>
    <input type="text" style="display: none;" name="<?= $name ?>" id="<?= $id ?>_input" value='<?= htmlspecialchars($value, ENT_QUOTES) ?>' <?= $required ? 'required' : '' ?>>
    <style type="text/css">
        .codex-editor{margin: 5px 30px !important;}
    </style>

    <?php if ($description): ?>
        <p class="text-gray-500 text-sm mt-1"><?= $description ?></p>
    <?php endif; ?>
    <?php 
    if (!empty($error_message)) {
        if (is_array($error_message)) {
            foreach ($error_message as $error): ?>
                <p class="text-red-500 text-sm mt-1"><?= xss_clean($error) ?></p>
            <?php endforeach;
        } elseif (is_string($error_message)) {
            echo '<p class="text-red-500 text-sm mt-1">' . xss_clean($error_message) . '</p>';
        }
    }
    ?>
</div>

<script>

    document.addEventListener("DOMContentLoaded", function () {
        if (typeof initEditor === 'function') {
            initEditor(<?= $id ?>,<?= $value ?>)
        } else {
            console.error('Hàm initEditor chưa sẵn sàng.');
        }
    });
</script>

