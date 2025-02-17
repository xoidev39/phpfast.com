<div x-data="menuSearch()" class="header absolute z-20 left-0 right-0 ">
    <div class="">
        <div class="flex justify-between p-5">
            <div class="nav" @click="toggleMenu">
                <div class="icon cursor-pointer">
                    <svg width="22" height="20" viewBox="0 0 22 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M1.66667 17C1.36931 17.0004 1.0833 17.1142 0.867071 17.3183C0.650846 17.5225 0.520727 17.8015 0.503302 18.0983C0.485874 18.3952 0.582455 18.6875 0.77331 18.9155C0.964165 19.1435 1.23489 19.2901 1.53017 19.3252L1.66667 19.3334H20.3333C20.6307 19.333 20.9167 19.2192 21.1329 19.015C21.3492 18.8109 21.4793 18.5319 21.4967 18.2351C21.5141 17.9382 21.4175 17.6459 21.2267 17.4179C21.0358 17.1899 20.7651 17.0433 20.4698 17.0082L20.3333 17H1.66667ZM1.66667 8.83335C1.35725 8.83335 1.0605 8.95627 0.841709 9.17506C0.622915 9.39386 0.5 9.6906 0.5 10C0.5 10.3094 0.622915 10.6062 0.841709 10.825C1.0605 11.0438 1.35725 11.1667 1.66667 11.1667H20.3333C20.6428 11.1667 20.9395 11.0438 21.1583 10.825C21.3771 10.6062 21.5 10.3094 21.5 10C21.5 9.6906 21.3771 9.39386 21.1583 9.17506C20.9395 8.95627 20.6428 8.83335 20.3333 8.83335H1.66667ZM1.66667 0.666687C1.35725 0.666687 1.0605 0.789604 0.841709 1.0084C0.622915 1.22719 0.5 1.52393 0.5 1.83335C0.5 2.14277 0.622915 2.43952 0.841709 2.65831C1.0605 2.8771 1.35725 3.00002 1.66667 3.00002H20.3333C20.6428 3.00002 20.9395 2.8771 21.1583 2.65831C21.3771 2.43952 21.5 2.14277 21.5 1.83335C21.5 1.52393 21.3771 1.22719 21.1583 1.0084C20.9395 0.789604 20.6428 0.666687 20.3333 0.666687H1.66667Z"
                            fill="#EDEDED" />
                    </svg>

                </div>
            </div>
            <div class="nav-menu transition-transform duration-300 ease-out transform -translate-x-full"
                :class="{'translate-x-0': open}">

                <div class="nav-feature relative z-[1]">
                    <ul class="flex gap-3 justify-between items-center">
                        <li class="nav-item"><a href="#" class="nav-link">
                                <img src="./image/nav-truyen.svg" alt="">
                            </a></li>
                        <li class="nav-item"><a href="#" class="nav-link">
                                <img src="./image/nav-game.svg" alt="">
                            </a></li>
                        <li class="nav-item"><a href="#" class="nav-link">
                                <img src="./image/nav-film.svg" alt="">
                            </a></li>
                    </ul>
                </div>
                <div class="nav-header relative z-[1]">
                    <div class="logo">
                        <img src="./image/logo-film.svg" alt="">
                    </div>
                    <div class="headline">Nhận thêm nhiều lợi ích khi trở thành thành viên</div>
                    <div class="action flex gap-3 mt-5">
                        <a href="#" class="btn btn-primary !p-3">Đăng nhập</a>
                        <a href="#" class="btn btn-secondary !p-3">Tạo tài khoản</a>
                    </div>
                </div>
                <div class="nav-menu-content w-full relative z-[1]">
                    <ul class="flex flex-col gap-4 mb-4">
                        <li class="py-3 border-b border-white">
                            <a href="/<?= LANG ?>/search/" class="flex items-center gap-3">
                                <img class="size-6" src="./image/icon/search.svg" alt="">
                                <span class="text-gray-200">Tìm kiếm</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="#" class="flex items-center gap-3">
                                <img class="size-6" src="./image/icon/home.svg" alt="">
                                <span class="text-gray-200">Trang chủ</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="#" class="flex items-center gap-3">
                                <img class="size-6" src="./image/icon/film.svg" alt="">
                                <span class="text-gray-200">Phim ảnh</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="#" class="flex items-center gap-3">
                                <img class="size-6" src="./image/icon/game.svg" alt="">
                                <span class="text-gray-200">Chơi game</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="#" class="flex items-center gap-3">
                                <img class="size-6" src="./image/icon/truyen.svg" alt="">
                                <span class="text-gray-200">Truyện tranh</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="#" class="flex items-center gap-3">
                                <img class="size-6" src="./image/icon/dating.svg" alt="">
                                <span class="text-gray-200">Hẹn hò</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="mt-auto">
                        <li class="py-3 border-t border-gray-900">
                            <div class="language flex items-center gap-3 cursor-pointer" @click="openLanguage">
                                <img class="size-6 w-8" src="./image/icon/language.svg" alt="">
                                <span class="text-gray-200">Language</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="nav-menu-account w-full mt-auto relative z-[1]">
                    <ul class="flex flex-col gap-4">
                        <li class="member bg-grey p-3 rounded-lg">
                            <a href="#" class="flex items-center gap-3">
                                <div class="icon relative ">
                                    <img class="w-10 h-10 rounded-full object-cover" src="./image/user/avarta.jpeg" alt="">
                                    <span class="icon-label absolute -bottom-2 -left-2">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M16.5357 4C16.8075 3.99997 17.0751 4.06688 17.3156 4.19494C17.556 4.323 17.7621 4.50836 17.9159 4.73501L17.9887 4.85356L20.7792 9.79201C20.9496 10.0934 21.0242 10.4406 20.9931 10.7864C20.962 11.1321 20.8265 11.4599 20.6051 11.7252L20.5097 11.8294L12.74 19.6901C12.5578 19.8744 12.3147 19.9842 12.0574 19.9984C11.8001 20.0126 11.5466 19.9303 11.3456 19.7671L11.2602 19.6909L3.49055 11.8294C3.24785 11.5839 3.08557 11.269 3.02569 10.9271C2.9658 10.5853 3.01121 10.2331 3.15576 9.91818L3.22105 9.79116L6.0107 4.85271C6.14552 4.61398 6.33578 4.41205 6.56501 4.26437C6.79425 4.11669 7.05558 4.0277 7.32643 4.00508L7.46286 4H16.5357ZM8.05962 9.32882C7.90271 9.48761 7.81457 9.70296 7.81457 9.92749C7.81457 10.152 7.90271 10.3674 8.05962 10.5262L11.2594 13.7634C11.3565 13.8617 11.4719 13.9397 11.5988 13.9929C11.7258 14.0462 11.8619 14.0735 11.9993 14.0735C12.1367 14.0735 12.2728 14.0462 12.3997 13.9929C12.5267 13.9397 12.642 13.8617 12.7392 13.7634L15.9389 10.5262C16.0189 10.4481 16.0826 10.3546 16.1265 10.2513C16.1704 10.148 16.1935 10.0369 16.1944 9.92444C16.1954 9.81201 16.1742 9.70051 16.1321 9.59644C16.0901 9.49237 16.0279 9.39783 15.9493 9.31832C15.8707 9.23881 15.7773 9.17594 15.6744 9.13336C15.5716 9.09078 15.4613 9.06936 15.3502 9.07033C15.2391 9.07131 15.1293 9.09467 15.0271 9.13905C14.925 9.18343 14.8327 9.24794 14.7555 9.32882L11.9993 12.1173L9.24311 9.32882C9.08615 9.17007 8.8733 9.08089 8.65137 9.08089C8.42943 9.08089 8.21658 9.17007 8.05962 9.32882Z"
                                                fill="url(#paint0_linear_750_21508)" />
                                            <path
                                                d="M7.81445 9.9275C7.81445 9.70297 7.9026 9.48762 8.05951 9.32883C8.21647 9.17008 8.42932 9.0809 8.65125 9.0809C8.87319 9.0809 9.08604 9.17008 9.243 9.32883L11.9992 12.1173L14.7553 9.32883C14.8326 9.24795 14.9249 9.18344 15.027 9.13906C15.1291 9.09468 15.239 9.07132 15.3501 9.07034C15.4612 9.06937 15.5714 9.09079 15.6743 9.13337C15.7772 9.17595 15.8706 9.23882 15.9492 9.31833C16.0278 9.39784 16.0899 9.49238 16.132 9.59645C16.1741 9.70052 16.1953 9.81202 16.1943 9.92446C16.1934 10.0369 16.1703 10.148 16.1264 10.2513C16.0825 10.3546 16.0188 10.4481 15.9388 10.5262L12.7391 13.7634C12.6419 13.8618 12.5266 13.9397 12.3996 13.993C12.2727 14.0462 12.1366 14.0736 11.9992 14.0736C11.8618 14.0736 11.7257 14.0462 11.5987 13.993C11.4718 13.9397 11.3564 13.8618 11.2593 13.7634L8.05951 10.5262C7.9026 10.3674 7.81445 10.152 7.81445 9.9275Z"
                                                fill="#D9D9D9" />
                                            <defs>
                                                <linearGradient id="paint0_linear_750_21508" x1="12" y1="4" x2="12" y2="20" gradientUnits="userSpaceOnUse">
                                                    <stop stop-color="white" />
                                                    <stop offset="1" stop-color="#C5C5C4" />
                                                </linearGradient>
                                            </defs>
                                        </svg>
                                    </span>
                                </div>
                                
                                <div class="flex flex-col">
                                    <span class="font-normal">Gói Thành viên</span>
                                    <span class="text-lg font-semibold">Hạng Membership</span>
                                </div>
                            </a>
                        </li>
                        <li class="">
                            <a href="#" class="flex items-center gap-3">
                                <img class="size-6 w-8" src="./image/icon/bookmark-movie.svg" alt="">
                                <span class="text-gray-200">Phim đã lưu</span>
                            </a>
                        </li>
                        <li class="">
                            <a href="#" class="flex items-center gap-3">
                                <img class="size-6 w-8" src="./image/icon/bookmark-comic.svg" alt="">
                                <span class="text-gray-200">Truyện đã lưu</span>
                            </a>
                        </li>
                        <li class="">
                            <div class="language flex items-center gap-3 cursor-pointer" @click="openLanguage">
                                <img class="size-6 w-8" src="./image/icon/language.svg" alt="">
                                <span class="text-gray-200">Language</span>
                            </div>
                        </li>
                        <li class="py-3 border-t border-gray-900">
                            <div class="flex items-center gap-3 cursor-pointer">
                                <img src="./image/icon/logout.svg" alt="">
                                <span class="text-gray-200">Đăng xuất</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="overlay fixed top-0 left-0 right-0 bottom-0 bg-black opacity-50 hidden"
                :class="{'hidden': !open}" @click="closeMenu"></div>
            <div class="modal-language relative z-50 hidden" :class="{'hidden': !modalLanguage}">
                <div class="overlay fixed top-0 left-0 right-0 bottom-0 bg-black opacity-50" @click="closeLanguage">
                </div>
                <div class="modal-content relative z-[1]">
                    <div class="modal-header relative pt-5 mb-4">
                        <span
                            class="icon absolute top-0 left-1/2 -translate-x-2/4 w-10 h-[3px] bg-white rounded"></span>
                        <div class="title font-medium text-base">Chọn ngôn ngữ</div>
                    </div>
                    <div class="modal-body">
                        <ul class="flex flex-col gap-3">
                            <li class="relative flex items-center gap-4 p-3 rounded">
                                <img src="./image/icon/en.svg" alt="">
                                <span class="text-gray-200">English</span>
                            </li>
                            <li class="relative flex items-center gap-4 bg-grey p-3 rounded ">
                                <img src="./image/icon/vn.svg" alt="">
                                <span class="text-gray-200">Tiếng Việt</span>
                                <span class="checked absolute top-1/2 right-3 -translate-y-1/2">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path d="M5 12L10 17L20 7" stroke="white" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </span>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="search">
                <div class="icon cursor-pointer" @click="toggleSearch">
                    <a href="/<?= LANG ?>/search/">
                        <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                d="M12.6667 22C17.8213 22 22 17.8213 22 12.6667C22 7.51203 17.8213 3.33335 12.6667 3.33335C7.51201 3.33335 3.33334 7.51203 3.33334 12.6667C3.33334 17.8213 7.51201 22 12.6667 22ZM12.6667 24.6667C15.485 24.6667 18.0765 23.6951 20.1243 22.0685C20.8854 21.4641 21.5713 20.7691 22.1659 20C23.7338 17.9721 24.6667 15.4283 24.6667 12.6667C24.6667 6.03927 19.2941 0.666687 12.6667 0.666687C6.03925 0.666687 0.666672 6.03927 0.666672 12.6667C0.666672 19.2941 6.03925 24.6667 12.6667 24.6667Z"
                                fill="#EDEDED" />
                            <path
                                d="M27.1013 25.5654C27.2301 25.4366 27.2317 25.2285 27.105 25.0977L22.1659 20C21.5713 20.7691 20.8854 21.4641 20.1243 22.0685L25.0976 27.0951C25.2276 27.2265 25.4396 27.2271 25.5703 27.0964L27.1013 25.5654Z"
                                fill="#EDEDED" />
                        </svg>    
                    </a>
                </div>
            </div>
        </div>
    </div>
    
</div>


<script>
    function menuSearch() {
            return {
                open: false,
                modalLanguage: false,
                openSearch: false,
                query: '',
                movies: [
                    {
                        id: 1,
                        title: 'Ironman (2008)',
                        director: 'Nolan',
                        duration: '152 phút',
                        watched: '214k lượt xem',
                        likes: '214k lượt thích',
                        image: './image/film/grid-film-5.png',
                    },
                    {
                        id: 2,
                        title: 'Tenet (2020)',
                        director: 'Nolan',
                        duration: '152 phút',
                        watched: '214k lượt xem',
                        likes: '231k lượt thích',
                        image: './image/film/grid-film-6.png',
                    },
                    {
                        id: 3,
                        title: 'Titanic (1996)',
                        director: 'James Cameron',
                        duration: '195 phút',
                        watched: '214k lượt xem',
                        likes: '320k lượt thích',
                        image: './image/film/grid-film-7.png',
                    },
                    {
                        id: 4,
                        title: 'Jujutsu Kaisen (2018)',
                        director: 'Gege Akutami',
                        duration: '23 tập',
                        watched: '214k lượt xem',
                        likes: '141k lượt thích',
                        image: './image/film/grid-film-9.png',
                    },
                ],
                get filteredMovies() {
                    if (!this.query.trim()) return [];
                    const lowerQuery = this.query.toLowerCase();
                    return this.movies.filter((movie) =>
                        movie.title.toLowerCase().includes(lowerQuery)
                    );
                },

                toggleMenu() {
                    this.open = !this.open;
                    this.updateFooterVisibility();
                },
                toggleSearch() {
                    this.openSearch = !this.openSearch;
                    this.$refs.inputSearch.focus();
                    document.querySelector('body').classList.add('overflow-y-hidden');
                },
                closeSearch() {
                    this.openSearch = false;
                    document.querySelector('body').classList.remove('overflow-y-hidden');
                },
                closeMenu() {
                    this.open = false;
                    this.updateFooterVisibility();
                },
                openLanguage() {
                    this.modalLanguage = !this.modalLanguage;
                    // this.closeMenu();
                    this.updateFooterVisibility();
                },
                closeLanguage() {
                    this.modalLanguage = false;
                    // this.closeMenu();
                    this.updateFooterVisibility();
                },
                updateFooterVisibility() {
                    const footer = document.querySelector('.footer');
                    if (this.open) {
                        footer.classList.add('hidden');
                    } else {
                        footer.classList.remove('hidden');
                    }
                }
            }
        }
</script>