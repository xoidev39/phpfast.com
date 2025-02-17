<div class="nav flex items-center justify-between py-4 gap-3">
    <div class="back flex items-center gap-2">
        <a href="/" class="flex items-center justify-center w-10 h-10 rounded-full bg-grey text-white">
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                    d="M3.5 23.3332C3.5 23.6426 3.62292 23.9393 3.84171 24.1581C4.0605 24.3769 4.35725 24.4998 4.66667 24.4998H23.3333C23.6428 24.4998 23.9395 24.3769 24.1583 24.1581C24.3771 23.9393 24.5 23.6426 24.5 23.3332V11.0715C24.5001 10.8937 24.4596 10.7182 24.3816 10.5585C24.3035 10.3988 24.19 10.259 24.0497 10.1498L14.7163 2.89083C14.5115 2.73152 14.2595 2.64502 14 2.64502C13.7405 2.64502 13.4885 2.73152 13.2837 2.89083L3.95033 10.1498C3.81001 10.259 3.69648 10.3988 3.61843 10.5585C3.54039 10.7182 3.49988 10.8937 3.5 11.0715V23.3332ZM5.83333 22.1665V11.6408L14 5.2895L22.1667 11.6408V22.1665H5.83333ZM19.8333 17.4998H8.16667V19.8332H19.8333V17.4998Z"
                    fill="white" />
            </svg>
        </a>
        <span class="title">
           <?= isset($data['name']) ? ucfirst($data['name']) : 'Tiêu đề'; ?>
        </span>
    </div>
    <div class="search">
        <a href="/<?= LANG ?>/search/">
            <div class="icon">
                <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd"
                        d="M12.6667 22C17.8213 22 22 17.8213 22 12.6667C22 7.51203 17.8213 3.33335 12.6667 3.33335C7.51201 3.33335 3.33334 7.51203 3.33334 12.6667C3.33334 17.8213 7.51201 22 12.6667 22ZM12.6667 24.6667C15.485 24.6667 18.0765 23.6951 20.1243 22.0685C20.8854 21.4641 21.5713 20.7691 22.1659 20C23.7338 17.9721 24.6667 15.4283 24.6667 12.6667C24.6667 6.03927 19.2941 0.666687 12.6667 0.666687C6.03925 0.666687 0.666672 6.03927 0.666672 12.6667C0.666672 19.2941 6.03925 24.6667 12.6667 24.6667Z"
                        fill="#EDEDED" />
                    <path
                        d="M27.1013 25.5654C27.2301 25.4366 27.2317 25.2285 27.105 25.0977L22.1659 20C21.5713 20.7691 20.8854 21.4641 20.1243 22.0685L25.0976 27.0951C25.2276 27.2265 25.4396 27.2271 25.5703 27.0964L27.1013 25.5654Z"
                        fill="#EDEDED" />
                </svg>
        
            </div>
        </a>
    </div>
</div>
<form class="w-full mx-auto">
    <label for="default-search" class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
    <div class="relative">
        <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
            <svg class="w-4 h-4 text-grey-light dark:text-gray-400" aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
            </svg>
        </div>
        <input type="search" id="default-search"
            class="block w-full py-4 pl-8 ps-10 text-sm placeholder:text-grey-light" placeholder="Tìm kiếm phim..."
            required />
        <!-- <button type="submit"
                    class="text-white absolute end-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Search</button> -->
    </div>
</form>