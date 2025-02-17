<div class="mt-8 border-t border-b border-grey py-4">
    <div class="flex flex-wrap items">
        <!-- Ngày ra mắt -->
        <div class="item w-1/3">
            <div class="title text-xs text-grey-light mb-1">Ngày ra mắt</div>
            <div class="content text-sm text-grey-80 min-h-16"><?= htmlspecialchars($data['release_date']); ?></div>
        </div>

        <!-- Tags -->
        <div class="item w-2/3">
            <div class="title text-xs text-grey-light mb-1">Tags</div>
            <div class="content text-sm text-grey-80 min-h-16">
                <?php foreach ($data['tags'] as $index => $tag): ?>
                    <a href="<?= htmlspecialchars($tag['url']); ?>" class="tag"><?= htmlspecialchars($tag['name']); ?></a>
                    <?php if ($index < count($data['tags']) - 1) echo ', '; ?>
                <?php endforeach; ?>
            </div>
        </div>

        <!-- Đạo diễn -->
        <div class="item w-1/3">
            <div class="title text-xs text-grey-light mb-1">Đạo diễn</div>
            <div class="content text-sm text-grey-80 min-h-16"><?= htmlspecialchars($data['director']); ?></div>
        </div>

        <!-- Diễn viên -->
        <div class="item w-2/3">
            <div class="title text-xs text-grey-light mb-1">Diễn viên</div>
            <div class="content text-sm text-grey-80 min-h-16"><?= htmlspecialchars(implode(', ', $data['actors'])); ?></div>
        </div>
    </div>

    <!-- Nội dung -->
    <div x-data="{ expanded: false }" class="description">
        <div class="title text-base text-grey-80 font-semibold mb-2">Nội dung</div>
        <div class="content text-sm text-grey-80">
            <p x-show="expanded">
                <?= nl2br(htmlspecialchars($data['description']['full'])); ?>
            </p>
            <p x-show="!expanded">
                <?= nl2br(htmlspecialchars($data['description']['short'])); ?>
            </p>
        </div>
        <div class="action text-center mt-4">
            <span @click="expanded = !expanded" class="readmore text-blue text-sm font-semibold cursor-pointer">
                <span x-show="!expanded">Xem thêm</span>
                <span x-show="expanded">Thu gọn</span>
            </span>
        </div>
    </div>
</div>
