
<div class="head-title flex items-center justify-between">
    <div class="title pl-5 font-semibold text-2xl leading-8 text-gray-200">
        <?= htmlspecialchars($data['label'], ENT_QUOTES, 'UTF-8'); ?>
    </div>
    <div class="icon">
        <img src="<?= htmlspecialchars($data['images'], ENT_QUOTES, 'UTF-8'); ?>" 
             alt="<?= htmlspecialchars($data['label'], ENT_QUOTES, 'UTF-8'); ?>" 
             class="w-24 h-24 object-contain">
    </div>
</div>