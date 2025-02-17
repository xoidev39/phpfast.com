<div class="pagination flex items-center justify-center gap-2 my-8">
    <?php
    // Lấy trang hiện tại, mặc định là 1 nếu không có
    $currentPage = isset($data['paged']) ? (int)$data['paged'] : 1;
    $slug = rtrim($data['slug'], '/'); // Đảm bảo không có '/' ở cuối
    $isNext = isset($data['is_next']) && $data['is_next'] == 1;

    // Tính toán trang bắt đầu và kết thúc
    $startPage = max(1, $currentPage - 2); // Hiển thị tối đa 2 trang trước
    $endPage = $isNext ? $currentPage + 1 : $currentPage; // Hiển thị chỉ 1 trang sau

    // Hàm xây dựng URL với các tham số $_GET và đường dẫn '/paged/{page}/'
    function build_pagination_url($slug, $page) {
        // Lấy tất cả các tham số hiện có từ $_GET
        $query_params = $_GET;

        // Loại bỏ tham số 'paged' nếu có để tránh trùng lặp
        unset($query_params['paged']);

        // Xây dựng chuỗi truy vấn từ các tham số còn lại
        $query_string = http_build_query($query_params);

        // Xây dựng URL phân trang với đường dẫn '/paged/{page}/'
        $url = rtrim($slug, '/') . '/paged/' . $page . '/';

        // Thêm chuỗi truy vấn nếu có
        if (!empty($query_string)) {
            $url .= '?' . $query_string;
        }

        return $url;
    }
    ?>

    <!-- Hiển thị trang đầu nếu cần -->
    <?php if ($startPage > 1): ?>
        <a href="<?= htmlspecialchars(build_pagination_url($slug, 1)); ?>"
           class="w-10 h-10 flex items-center justify-center rounded-lg border border-gray-700 text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
            1
        </a>
        <?php if ($startPage > 2): ?>
            <span class="w-10 h-10 flex items-center justify-center text-gray-400">...</span>
        <?php endif; ?>
    <?php endif; ?>

    <!-- Hiển thị các trang ở giữa -->
    <?php for ($i = $startPage; $i <= $endPage; $i++): ?>
        <?php if ($i == $currentPage): ?>
            <span class="btn-primary w-10 h-10 flex items-center justify-center rounded-lg text-white font-medium">
                <?= $i; ?>
            </span>
        <?php else: ?>
            <a href="<?= htmlspecialchars(build_pagination_url($slug, $i)); ?>"
               class="w-10 h-10 flex items-center justify-center rounded-lg border border-gray-700 text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                <?= $i; ?>
            </a>
        <?php endif; ?>
    <?php endfor; ?>

    <!-- Hiển thị nút "Next" -->
    <?php if ($isNext): ?>
        <a href="<?= htmlspecialchars(build_pagination_url($slug, $currentPage + 1)); ?>"
           class="px-4 h-10 flex items-center justify-center rounded-lg border border-gray-700 text-gray-300 hover:bg-white hover:text-red-700 transition-colors gap-1">
            Next
            <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M9 5l7 7-7 7" stroke-linecap="round" stroke-linejoin="round" />
            </svg>
        </a>
    <?php endif; ?>
</div>
