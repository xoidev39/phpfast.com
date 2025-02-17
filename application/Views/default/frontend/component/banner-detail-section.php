<?php
// Ensure 'single_movie' exists and is set to 1
$single_movie = !empty($data['single_movie']) && $data['single_movie'] == 1;

// Tạo mảng link để dùng trong JS từ $data['source']
$allSources = array_map(function ($item) {
    return $item['link'];
}, $data['chapters']['source'] ?? []);

// Tạo mảng phụ đề (nếu có)
$allSubtitles = $data['suburl'] ?? [];
?>
<!-- Bao gồm CSS cho hiệu ứng chuyển tiếp -->
<style>
    .hidden {
        display: none;
    }
    .fade-out {
        opacity: 0;
        transition: opacity 0.3s ease-out;
    }
    .fade-in {
        opacity: 1;
        transition: opacity 0.3s ease-in;
    }
</style>

<div class="main-photo relative mt-10">
    <!-- Banner image và nút play -->
    <div id="featured-img" class="featured-img relative -mb-20 md:-mb-40 xl:-mb-80">
        <img class="w-full aspect-video rounded object-cover" src="<?= htmlspecialchars($data['banner']); ?>" alt="<?= htmlspecialchars($data['title']); ?>">
        <div class="action-play absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2">
        <?php if ($single_movie): ?>
            <button id="play-button" class="btn btn-primary !flex gap-3 items-center px-6 py-3">
                <svg width="16" height="22" viewBox="0 0 16 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M15.2089 10.6335C15.7599 11.0429 15.7441 11.8729 15.178 12.261L1.56546 21.5936C0.901852 22.0485 5.35697e-07 21.5734 5.16316e-07 20.7688L4.79044e-08 1.32229C2.81054e-08 0.500314 0.936598 0.0293746 1.59639 0.51959L15.2089 10.6335Z" fill="white" />
                </svg>
                <span class="text-white">Play</span>
            </button>
        <?php elseif(isset($data['url_chapter'])):?>
            <a href="<?= $data['url_chapter'];?>" id="" class="btn btn-primary !flex gap-3 items-center px-6 py-3">
                <svg width="16" height="22" viewBox="0 0 16 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M15.2089 10.6335C15.7599 11.0429 15.7441 11.8729 15.178 12.261L1.56546 21.5936C0.901852 22.0485 5.35697e-07 21.5734 5.16316e-07 20.7688L4.79044e-08 1.32229C2.81054e-08 0.500314 0.936598 0.0293746 1.59639 0.51959L15.2089 10.6335Z" fill="white" />
                </svg>
                <span class="text-white">Play</span>
             </a>
        <?php else: ?>
            <a href="<?= $data['trailer'];?>" id="" class="btn btn-primary !flex gap-3 items-center px-6 py-3">
                <svg width="16" height="22" viewBox="0 0 16 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M15.2089 10.6335C15.7599 11.0429 15.7441 11.8729 15.178 12.261L1.56546 21.5936C0.901852 22.0485 5.35697e-07 21.5734 5.16316e-07 20.7688L4.79044e-08 1.32229C2.81054e-08 0.500314 0.936598 0.0293746 1.59639 0.51959L15.2089 10.6335Z" fill="white" />
                </svg>
                <span class="text-white">Play</span>
             </a>
        <?php endif; ?>
        </div>
    </div>
    <?php if ($single_movie): ?>
        <script>
            var all_sources = <?= json_encode($allSources, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE); ?>;
            var all_subtitles = <?= json_encode($allSubtitles, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE); ?>;
        </script>

        <div class="grid grid-cols-12 gap-4 hidden " id="video-section">
            <!-- Video player section - 12 cols on tablet, 8 on desktop -->
            <div class="col-span-12 lg:col-span-8">
                <div id="video-player" class="w-full aspect-video bg-black mb-4 rounded-lg"></div>
            </div>

            <!-- Server list section - 12 cols on tablet, 4 on desktop -->
            <div class="col-span-12 lg:col-span-4">
                <div class="mb-2 text-sm font-medium text-gray-600">Chọn Server:</div>
                <div id="server-list" class="flex flex-wrap gap-2 mb-4"></div>
            </div>
        </div>
    <?php endif; ?>

    <!-- Main info -->
    <div class="main-info-2 xl:min-h-80	md:min-h-40 min-h-20">
        <div class="w-full flex flex-wrap gap-4 justify-center text-center">
            <div class="title w-full text-2xl font-semibold leading-8"><?= htmlspecialchars($data['title']); ?></div>
            <div class="list-counter w-full">
                <ul class="flex gap-2 justify-center">
                    <li class="flex gap-1">
                        <!-- Duration -->
                        <svg width="25" height="24" viewBox="0 0 25 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <g opacity="0.89">
                                <path
                                    d="M5.12315 6.90853C5.04362 6.362 5.42221 5.85449 5.96874 5.77497L13.8854 4.62307C14.4319 4.54355 14.9394 4.92214 15.0189 5.46867L15.1999 6.71214H17.2209L16.8541 4.19111C16.6951 3.09805 15.68 2.34088 14.587 2.49993L4.69119 3.93979C3.59813 4.09884 2.84096 5.11387 3 6.20693L4.43987 16.1027C4.58483 17.099 5.4409 17.8162 6.41903 17.815V15.8871C6.41903 15.8389 6.41554 15.7908 6.40861 15.7431L5.12315 6.90853Z"
                                    fill="#0AE80D" />
                                <path
                                    d="M12.7209 17.6159V11.3841C12.7209 11.2223 12.9031 11.1275 13.0356 11.2203L17.4869 14.3362C17.6006 14.4158 17.6006 14.5842 17.4869 14.6638L13.0356 17.7797C12.9031 17.8725 12.7209 17.7777 12.7209 17.6159Z"
                                    fill="#0AE80D" />
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                    d="M19.7209 7.5H9.72093C8.61636 7.5 7.72093 8.39543 7.72093 9.5V19.5C7.72093 20.6046 8.61636 21.5 9.72093 21.5H19.7209C20.8255 21.5 21.7209 20.6046 21.7209 19.5V9.5C21.7209 8.39543 20.8255 7.5 19.7209 7.5ZM18.7209 9.5L10.7209 9.5C10.1686 9.5 9.72093 9.94772 9.72093 10.5V18.5C9.72093 19.0523 10.1686 19.5 10.7209 19.5H18.7209C19.2732 19.5 19.7209 19.0523 19.7209 18.5V10.5C19.7209 9.94771 19.2732 9.5 18.7209 9.5Z"
                                    fill="#0AE80D" />
                                <path
                                    d="M5.89675 5.28018C5.07695 5.39946 4.50907 6.16073 4.62836 6.98053L5.91382 15.8151C5.91728 15.839 5.91903 15.863 5.91903 15.8871V17.2294C5.41127 17.0494 5.0176 16.6008 4.93466 16.0307L3.49479 6.13493C3.37551 5.31514 3.94338 4.55387 4.76318 4.43458L14.659 2.99472C15.4788 2.87543 16.24 3.44331 16.3593 4.26311L16.6429 6.21214H15.6324L15.5137 5.39667C15.3944 4.57688 14.6332 4.009 13.8134 4.12828L5.89675 5.28018ZM16.849 14.5L13.2209 17.0397V11.9603L16.849 14.5ZM17.2001 14.7458C17.1999 14.7456 17.1997 14.7455 17.1996 14.7454L17.2001 14.7458ZM17.1996 14.2546C17.1997 14.2545 17.1999 14.2544 17.2001 14.2542L17.1996 14.2546ZM9.72093 8H19.7209C20.5494 8 21.2209 8.67157 21.2209 9.5V19.5C21.2209 20.3284 20.5494 21 19.7209 21H9.72093C8.8925 21 8.22093 20.3284 8.22093 19.5V9.5C8.22093 8.67157 8.8925 8 9.72093 8ZM18.7209 9L10.7209 9C9.8925 9 9.22093 9.67157 9.22093 10.5V18.5C9.22093 19.3284 9.8925 20 10.7209 20H18.7209C19.5494 20 20.2209 19.3284 20.2209 18.5V10.5C20.2209 9.67157 19.5494 9 18.7209 9Z"
                                    stroke="#0AE80D" />
                            </g>
                        </svg>
                        <span><?= htmlspecialchars($data['duration']); ?> phút</span>
                    </li>
                    <li class="flex gap-1">
                    <svg width="25" height="24" viewBox="0 0 25 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M12.1189 1.72757C14 3.00024 14 4.41122 14 7.3279V8.66739L19.0135 8.66733C19.2028 8.66733 19.3794 8.71713 19.5013 8.75935C19.6395 8.80719 19.7838 8.8726 19.9262 8.95097C20.2085 9.10627 20.5264 9.33637 20.8007 9.64378C21.0756 9.95196 21.3313 10.3667 21.4271 10.8832C21.5126 11.3444 21.4595 11.8291 21.254 12.3127C21.5395 12.6295 21.8425 13.0699 21.9804 13.6362C22.1486 14.3272 22.0424 15.0855 21.5825 15.8638C21.8695 16.8643 21.4845 18.097 20.4072 18.9244C20.4877 19.3976 20.5749 20.0671 20.4549 20.6651C20.3757 21.0594 20.1941 21.4978 19.8043 21.83C19.4202 22.1574 18.9354 22.2954 18.4095 22.3005C17.2212 22.379 15.388 22.4726 13.7113 22.5001C12.8678 22.5139 12.0532 22.5112 11.3758 22.4803C10.741 22.4512 10.1063 22.3944 9.70382 22.2518C9.3765 22.1358 9.07331 21.9859 8.8057 21.8536L8.71748 21.81C8.41738 21.6623 8.12627 21.5242 7.77494 21.4047C7.08712 21.1706 6.09213 20.9824 4.38305 21.0858C3.39937 21.1453 2.5 20.3592 2.5 19.2855V13.3769C2.5 12.3617 5.20117 11.6428 6 11.5001C8.71748 11.5001 9 10.0001 9.11815 6.65765V2.99287C9.11815 2.19304 9.62478 1.47044 10.4521 1.26486C11.1077 1.10195 11.5594 1.34902 12.1189 1.72757Z"
                                fill="#6B87F9" />
                        </svg>
                        <span><?= htmlspecialchars($data['like_count']); ?> lượt thích</span>
                    </li>
                    <li class="flex gap-1">
                    <svg width="25" height="24" viewBox="0 0 25 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M17.355 20.9662C17.131 20.9662 16.912 20.9162 16.709 20.8202L16.605 20.7692L12.498 18.4262L8.39101 20.7702L8.28501 20.8232C8.04142 20.9357 7.77239 20.9818 7.50524 20.9566C7.23809 20.9315 6.98235 20.8361 6.76401 20.6802C6.53224 20.511 6.35384 20.279 6.24998 20.0115C6.14611 19.7441 6.12114 19.4524 6.17801 19.1712L7.13501 14.5292L5.53301 13.0722L3.63801 11.3472L3.56001 11.2652C3.37465 11.0699 3.24527 10.8283 3.18544 10.5658C3.12562 10.3033 3.13756 10.0295 3.22001 9.77318C3.39301 9.24918 3.84001 8.86118 4.38001 8.76418L4.48201 8.74618L9.18301 8.22518L11.129 3.91518L11.189 3.80518C11.3188 3.57177 11.5086 3.37725 11.7387 3.24171C11.9688 3.10617 12.2309 3.03452 12.498 3.03418C13.041 3.03418 13.542 3.33218 13.807 3.80418L13.867 3.91618L15.815 8.22818L20.516 8.74918L20.62 8.76618C21.159 8.86618 21.606 9.25218 21.778 9.77818C21.948 10.2992 21.813 10.8762 21.438 11.2722L21.36 11.3502L17.862 14.5342L18.819 19.1662C18.8762 19.4493 18.8511 19.7429 18.7465 20.0121C18.6419 20.2813 18.4623 20.5149 18.229 20.6852C17.9742 20.8679 17.6686 20.9662 17.355 20.9662Z"
                                fill="#F4C26C" />
                        </svg>
                        <span><?= htmlspecialchars($data['rating']); ?></span>
                    </li>
                </ul>
            </div>
        </div>
    </div>


</div>

<?php if ($single_movie): ?>
    <script>
    document.addEventListener('DOMContentLoaded', function () {
        let art;

        // Chỉ thực hiện nếu có nguồn video
        if (all_sources && all_sources.length > 0) {
            art = initPlayer(); // Giả sử initPlayer() được định nghĩa ở đâu đó
            createServerButtons(art); // Giả sử createServerButtons() được định nghĩa ở đâu đó
        }

        // Lấy các phần tử cần thiết
        const playButton = document.getElementById('play-button');
        const featuredImg = document.getElementById('featured-img');
        const videoSection = document.getElementById('video-section');
        const mainInfo = document.querySelector('.main-info-2');

        playButton.addEventListener('click', function () {
            // 1. Ẩn banner với hiệu ứng mờ dần
            featuredImg.classList.add('fade-out');

            // 2. Thêm lớp 'collapse' để ẩn .main-info-2 với hiệu ứng
            mainInfo.classList.add('player');

            // 3. Khi hiệu ứng của featuredImg hoàn tất, ẩn hoàn toàn banner và hiển thị video section
            featuredImg.addEventListener('transitionend', function handleTransitionEnd() {
                featuredImg.classList.add('hidden');
                featuredImg.classList.remove('fade-out');
                
                // Hiển thị video section với hiệu ứng mờ dần
                videoSection.classList.remove('hidden');
                videoSection.classList.add('fade-in');

                // Gỡ bỏ listener để tránh gọi lại nhiều lần
                featuredImg.removeEventListener('transitionend', handleTransitionEnd);
            });

            // 4. Khi hiệu ứng của mainInfo hoàn tất, có thể ẩn hoàn toàn hoặc giữ nguyên tùy nhu cầu
            mainInfo.addEventListener('transitionend', function handleMainInfoTransitionEnd() {
                // Tùy chọn: Ẩn hoàn toàn phần tử sau khi chuyển đổi
                mainInfo.style.display = 'none';
                mainInfo.removeEventListener('transitionend', handleMainInfoTransitionEnd);
            });

            // 5. Nếu trình phát video đã được khởi tạo, thiết lập sự kiện 'ready' để phát video
            if (art) {
                art.on('ready', () => {
                    art.play();
                });

                // Kiểm tra và gọi play ngay nếu trình phát đã sẵn sàng
                if (typeof art.play === 'function') {
                    art.play();
                }
            }
        });
    });
    </script>
<?php endif; ?>

<style>
    .main-info-2 {
        position: relative;
        display: flex;
        flex-wrap: wrap;
        align-items: flex-end;
        justify-content: center;
        background-image: linear-gradient(180deg,#fff0 0%,#010101 60%);
        transition: max-height 0.5s ease, opacity 0.5s ease;
        overflow: hidden;
        height: fit-content;
        opacity: 1;
    }

    /* Trạng thái khi ẩn đi */
    .main-info-2.player {
        min-height: unset;
        height: fit-content;
        background-image: unset;

    }

    .featured-img {
        transition: opacity 0.5s ease, margin-bottom 0.5s ease;
    }

    .featured-img.fade-out {
        opacity: 0;
    }

    .fade-in {
        opacity: 1;
        transition: opacity 0.5s ease;
    }
</style>
