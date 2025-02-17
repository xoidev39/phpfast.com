<div data-attr="scroll-container" class="nav-tabs <?= (isset($data['is_home']) && $data['is_home']) ? ' rounded-lg border-t border-gray-900' : ' !mt-4' ?>">
    <ul>
        <li>
            <a href="<?= '/'.LANG.  '/'  . $data['posttype'] ?>" class="<?= !isset($data['current_category']) ? 'active' : '' ?>">Tất cả</a>
        </li>
        <?php foreach ($data['items'] as $category): ?>
            <li>
                <a href="<?= htmlspecialchars($category['slug'], ENT_QUOTES, 'UTF-8'); ?>" 
                   class="<?= isset($category['is_active']) && $category['is_active'] ? 'active' : '' ?>">
                    <?= htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
</div>