<?php $keysearch = ''; ?>

<!-- Thêm Alpine.js vào dự án của bạn nếu chưa có -->
<script src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js" defer></script>

<div x-data="searchComponent()" class="flex flex-col bg-black text-white p-4 space-y-3">
    <!-- Top Bar -->
    <div class="flex items-center space-x-2">
        <!-- Search Input -->
        <div class="relative flex-1">
            <input type="text" x-model="query" @keydown.enter="submitSearch" placeholder="Tìm kiếm phim, diễn viên, đạo diễn..."
                x-ref="inputSearch"
                class="w-full pl-10 pr-6 h-7 bg-gray-800 text-white text-sm rounded placeholder-gray-400 focus:outline-none"
                />
            <!-- Search Icon -->
            <svg class="absolute top-1/2 left-3 w-4 h-4 text-gray-400 transform -translate-y-1/2" width="18" height="18"
                viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M8.16675 14.0003C11.3884 14.0003 14.0001 11.3887 14.0001 8.16699C14.0001 4.94533 11.3884 2.33366 8.16675 2.33366C4.94509 2.33366 2.33341 4.94533 2.33341 8.16699C2.33341 11.3887 4.94509 14.0003 8.16675 14.0003ZM8.16675 15.667C9.92823 15.667 11.5479 15.0597 12.8278 14.0432C13.3034 13.6654 13.7322 13.231 14.1038 12.7503C15.0837 11.4829 15.6667 9.89302 15.6667 8.16699C15.6667 4.02486 12.3089 0.666992 8.16675 0.666992C4.02461 0.666992 0.666748 4.02486 0.666748 8.16699C0.666748 12.3091 4.02461 15.667 8.16675 15.667Z"
                    fill="#B2B2B2" />
                <path
                    d="M17.1884 16.2287C17.2689 16.1482 17.2699 16.0181 17.1907 15.9364L14.1038 12.7503C13.7322 13.231 13.3034 13.6654 12.8278 14.0432L15.9361 17.1848C16.0173 17.2669 16.1499 17.2672 16.2315 17.1856L17.1884 16.2287Z"
                    fill="#B2B2B2" />
            </svg>
            <!-- Clear Button -->
            <button @click="clearSearch" class="absolute top-1/2 right-3 transform -translate-y-1/2 text-gray-400 hover:text-white">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    class="w-4 h-4">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M6 18L18 6M6 6l12 12" />
                </svg>
            </button>
        </div>
    </div>

    <!-- Filter Buttons -->
    <div class="flex space-x-2">
        <!-- Category Filter Dropdown -->
        <div class="relative" x-data="{ open: false }">
            <button @click="open = !open" class="flex items-center space-x-2 px-3 py-2 bg-grey text-grey-light text-sm font-medium rounded w-full">
                <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M12.6667 5.33301C12.6667 4.96482 12.3682 4.66634 12 4.66634C11.6318 4.66634 11.3333 4.96482 11.3333 5.33301C11.3333 5.7012 11.6318 5.99967 12 5.99967C12.3682 5.99967 12.6667 5.7012 12.6667 5.33301ZM12 3.33301C13.1046 3.33301 14 4.22844 14 5.33301C14 6.43758 13.1046 7.33301 12 7.33301C11.1292 7.33301 10.3884 6.77647 10.1138 5.99967L2.66667 5.99967C2.29848 5.99967 2 5.7012 2 5.33301C2 4.96482 2.29848 4.66634 2.66667 4.66634L10.1138 4.66634C10.3884 3.88955 11.1292 3.33301 12 3.33301ZM14 9.99967C14 10.3679 13.7015 10.6663 13.3333 10.6663H5.8862C5.61164 11.4431 4.87081 11.9997 4 11.9997C2.89543 11.9997 2 11.1042 2 9.99967C2 8.8951 2.89543 7.99967 4 7.99967C4.87081 7.99967 5.61164 8.55621 5.8862 9.33301L13.3333 9.33301C13.7015 9.33301 14 9.63148 14 9.99967ZM4.66667 9.99967C4.66667 9.63148 4.36819 9.33301 4 9.33301C3.63181 9.33301 3.33333 9.63148 3.33333 9.99967C3.33333 10.3679 3.63181 10.6663 4 10.6663C4.36819 10.6663 4.66667 10.3679 4.66667 9.99967Z"
                        fill="#B2B2B2" />
                </svg>
                <span x-text="selectedCategoryLabel">Thể loại</span>
                <svg :class="{ 'transform rotate-180': open }" class="w-4 h-4 transition-transform duration-200"
                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M19 9l-7 7-7-7" />
                </svg>
            </button>

            <!-- Dropdown Menu -->
            <div x-show="open" @click.away="open = false"
                class="absolute mt-2 w-full bg-white text-black rounded shadow-lg z-10">
                <ul>
                    <li @click="selectCategory(null)"
                        class="px-4 py-2 hover:bg-gray-200 cursor-pointer">
                        Tất cả
                    </li>
                    <template x-for="(type, index) in postttypes" :key="index">
                        <li @click="selectCategory(type.value)"
                            class="px-4 py-2 hover:bg-gray-200 cursor-pointer"
                            x-text="type.label">
                        </li>
                    </template>
                </ul>
            </div>
        </div>

        <!-- Sort Filter Dropdown -->
        <div class="relative" x-data="{ open: false }">
            <button @click="open = !open" class="flex items-center space-x-2 px-3 py-2 bg-grey text-grey-light text-sm font-medium rounded w-full">
                <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M3.87051 3.33301C4.2387 3.33301 4.53718 3.63148 4.53718 3.99967V10.471L6.05088 9.0656C6.3207 8.81508 6.74252 8.83073 6.99304 9.10055C7.24356 9.37038 7.22791 9.7922 6.95809 10.0427L4.32411 12.4882C4.06481 12.729 3.6626 12.7252 3.40785 12.4797L0.870753 10.0341C0.605663 9.77862 0.597907 9.35659 0.853428 9.0915C1.10895 8.82641 1.53099 8.81865 1.79608 9.07417L3.20384 10.4311V3.99967C3.20384 3.63148 3.50232 3.33301 3.87051 3.33301ZM8.29439 4.41789C8.29439 4.0497 8.59287 3.75122 8.96106 3.75122H14.6667C15.0349 3.75122 15.3334 4.0497 15.3334 4.41789C15.3334 4.78608 15.0349 5.08455 14.6667 5.08455H8.96106C8.59287 5.08455 8.29439 4.78608 8.29439 4.41789ZM8.29439 7.62774C8.29439 7.25955 8.59287 6.96107 8.96106 6.96107H13.0366C13.4047 6.96107 13.7032 7.25955 13.7032 7.62774C13.7032 7.99593 13.4047 8.29441 13.0366 8.29441H8.96106C8.59287 8.29441 8.29439 7.99593 8.29439 7.62774ZM8.29439 10.8376C8.29439 10.4694 8.59287 10.1709 8.96106 10.1709H11.4064C11.7745 10.1709 12.073 10.4694 12.073 10.8376C12.073 11.2058 11.7745 11.5043 11.4064 11.5043H8.96106C8.59287 11.5043 8.29439 11.2058 8.29439 10.8376Z"
                        fill="#B2B2B2" />
                </svg>
                <span x-text="selectedSortLabel">Sắp xếp</span>
                <svg :class="{ 'transform rotate-180': open }" class="w-4 h-4 transition-transform duration-200"
                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M19 9l-7 7-7-7" />
                </svg>
            </button>

            <!-- Dropdown Menu -->
            <div x-show="open" @click.away="open = false"
                class="absolute mt-2 w-full bg-white text-black rounded shadow-lg z-10">
                <ul>
                    <li @click="selectSortBy(null)"
                        class="px-4 py-2 hover:bg-gray-200 cursor-pointer">
                        Mặc định
                    </li>
                    <template x-for="(sort, index) in sortOptions" :key="index">
                        <li @click="selectSortBy(sort.value)"
                            class="px-4 py-2 hover:bg-gray-200 cursor-pointer"
                            x-text="sort.label">
                        </li>
                    </template>
                </ul>
            </div>
        </div>
    </div>

    <!-- Search Results -->
    <?php if(!empty($result)) { ?>
        <div x-show="query.length > 0" class="mt-4">
            <h2 class="text-lg font-semibold">Kết quả tìm kiếm cho "<span x-text="query"><?= htmlspecialchars($keysearch) ?></span>": </h2>
            <?= $result ?>
        </div>
        <div class="title">
            <span class="text-lg font-medium">Tìm kiếm đa dạng</span>
        </div>
    <?php }; ?>

    <?php if(!empty($sections)) {
        foreach($sections as $section) {
            echo '<div class="section">' . $section . '</div>';
        }
    } ?>
</div>

<script>
    function searchComponent() {
        return {
            query: '<?= htmlspecialchars($keysearch) ?? '' ?>', // Khởi tạo từ PHP
            postttypes: [
                { label: 'Phim', value: 'posttype__movie' },
                { label: 'Truyện tranh', value: 'posttype__comic' },
                { label: 'Truyện chữ', value: 'posttype__novel' },
                { label: 'Game', value: 'posttype__game' },
                // Thêm các thể loại khác tại đây
            ],
            sortOptions: [
                { label: 'Mặc định', value: null },
                { label: 'Xu hướng', value: 'trending' },
                { label: 'Lượt xem cao', value: 'top_view' },
                // Thêm các tùy chọn sắp xếp khác tại đây
            ],
            selectedCategory: null,
            selectedSort: null,

            get selectedCategoryLabel() {
                if (!this.selectedCategory) return 'Thể loại';
                const category = this.postttypes.find(type => type.value === this.selectedCategory);
                return category ? category.label : 'Thể loại';
            },

            get selectedSortLabel() {
                if (!this.selectedSort) return 'Sắp xếp';
                const sort = this.sortOptions.find(option => option.value === this.selectedSort);
                return sort ? sort.label : 'Sắp xếp';
            },

            init() {
                // Lấy các tham số từ URL
                const urlParams = new URLSearchParams(window.location.search);
                const filter = urlParams.get('filter');
                const sortby = urlParams.get('sortby');
                const q = urlParams.get('q');

                this.selectedCategory = filter;
                this.selectedSort = sortby;
                this.query = q ? q : this.query; // Nếu có q trong URL, sử dụng nó

                // Đảm bảo input hiển thị đúng giá trị từ URL hoặc PHP
                this.$nextTick(() => {
                    this.$refs.inputSearch.value = this.query;
                });
            },

            selectCategory(value) {
                this.selectedCategory = value;
                this.updateURLAndReload();
            },

            selectSortBy(value) {
                this.selectedSort = value;
                this.updateURLAndReload();
            },

            submitSearch() {
                const urlParams = new URLSearchParams(window.location.search);

                if (this.query.trim() !== '') {
                    urlParams.set('q', this.query.trim());
                } else {
                    urlParams.delete('q');
                }

                // Giữ lại các tham số filter và sortby hiện tại
                if (this.selectedCategory) {
                    urlParams.set('filter', this.selectedCategory);
                } else {
                    urlParams.delete('filter');
                }

                if (this.selectedSort) {
                    urlParams.set('sortby', this.selectedSort);
                } else {
                    urlParams.delete('sortby');
                }

                // Loại bỏ '/paged/{số}/' khỏi pathname
                let pathname = window.location.pathname;
                pathname = pathname.replace(/\/paged\/\d+\//, '/');

                // Xây dựng URL mới
                const newUrl = window.location.origin + pathname + '?' + urlParams.toString();

                // Chuyển hướng tới URL mới
                window.location.href = newUrl;
            },


            updateURLAndReload() {
                const urlParams = new URLSearchParams(window.location.search);

                if (this.selectedCategory) {
                    urlParams.set('filter', this.selectedCategory);
                } else {
                    urlParams.delete('filter');
                }

                if (this.selectedSort) {
                    urlParams.set('sortby', this.selectedSort);
                } else {
                    urlParams.delete('sortby');
                }

                // Loại bỏ '/paged/{số}/' khỏi pathname
                let pathname = window.location.pathname;
                pathname = pathname.replace(/\/paged\/\d+\//, '/');

                // Xây dựng URL mới
                const newUrl = window.location.origin + pathname + '?' + urlParams.toString();

                // Chuyển hướng tới URL mới
                window.location.href = newUrl;
            },


            clearSearch() {
                this.query = '';
                // Xóa tham số q khỏi URL và reload trang
                const urlParams = new URLSearchParams(window.location.search);
                urlParams.delete('q');

                // Loại bỏ '/paged/{số}/' khỏi pathname
                let pathname = window.location.pathname;
                pathname = pathname.replace(/\/paged\/\d+\//, '/');

                // Xây dựng URL mới
                const newUrl = window.location.origin + pathname + (urlParams.toString() ? '?' + urlParams.toString() : '');

                // Chuyển hướng tới URL mới
                window.location.href = newUrl;
            }

        }
    }
</script>

