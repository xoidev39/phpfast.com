<?php
// Tạo mảng link để dùng trong JS
$allSources = array_map(function ($item) {
    return $item['link'];
}, $data['source']);

// Tạo mảng phụ đề (nếu có)
$allSubtitles = $data['suburl'] ?? []; 
?>
<script>
    var all_sources = <?= json_encode($allSources, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE); ?>;
    var all_subtitles = <?= json_encode($allSubtitles, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE); ?>;
</script>

<div class="grid grid-cols-12 gap-4 mt-10">
    <!-- Video player section - 12 cols on tablet, 8 on desktop -->
    <div class="col-span-12 lg:col-span-8">
        <div id="video-player" class="w-full aspect-video bg-black mb-4 rounded-lg"></div>
    </div>

    <!-- Server list section - 12 cols on tablet, 4 on desktop -->
    <div class="col-span-12 lg:col-span-4">
        <div class="mb-2 text-sm font-medium text-gray-600">Chọn Server:</div>
        <div id="server-list" class="flex flex-wrap gap-2 mb-4"></div>
        <div class="chapter-list">
            <div class="title text mb-2">
                <p class="text-xs text-grey-light">Danh sách tập</p>
            </div>
            <div x-data="{ expanded: false }" class="listing">
                <ul :class="expanded ? 'h-auto' : 'h-20'" class="flex flex-wrap gap-2 overflow-hidden">
                    <?php foreach ($data['list_chapter'] as $chapter): ?>
                        <li>
                            <a href="<?= htmlspecialchars($chapter['slug']); ?>"
                                class="<?= !empty($chapter['current']) ? 'active' : ''; ?>">
                                <span><?= htmlspecialchars($chapter['title']); ?></span>
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
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
    if (all_sources && all_sources.length > 0) {
        const art = initPlayer();
        createServerButtons(art);
    }
});
</script>