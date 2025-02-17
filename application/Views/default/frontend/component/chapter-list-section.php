
<div class="chapter-list mt-20 mb-12">
    <div class="title text mb-2">
        <h2 class="text-xs text-grey-light">Danh sách tập</h2>
    </div>
    <div x-data="{ expanded: false }" class="listing">
        <ul :class="expanded ? 'h-auto' : 'h-20'" class="flex flex-wrap gap-2 overflow-hidden">
            <?php foreach ($data as $chapter): ?>
                <li>
                    <a href="<?= htmlspecialchars($chapter['url']); ?>" class="<?= isset($chapter['current_chapter']) && ($chapter['current_chapter'] == true) ? 'active' : ''; ?>">
                        <span><?= htmlspecialchars($chapter['name']); ?></span>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>
        <div class="action text-center mt-4">
            <span @click="expanded = !expanded" class="readmore text-blue text-sm font-semibold cursor-pointer">
                <span x-show="!expanded">Xem thêm</span>
                <span x-show="expanded">Thu gọn</span>
            </span>
        </div>
    </div>
</div>
