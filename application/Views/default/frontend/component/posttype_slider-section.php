<div class="head-title flex items-center justify-between mb-4">
    <div class="title font-medium text-base leading-6 text-gray-200"><?php echo $data['label']; ?> 🔥</div>
</div>
<div class="hero-banner border border-grey rounded-2xl overflow-hidden">
    <div x-data="swiperBanner()" class="swiper-slider">
        <div class="swiper">
            <div class="swiper-wrapper">
                <!-- Loop through the items in $data['items'] -->
                <?php foreach ($data['items'] as $item): ?>
                    <div class="swiper-slide relative">
                        <div class="feature-img">
                            <img class="object-cover w-full h-[240px]" src="<?php echo $item['banner']->path; ?>" alt="<?php echo $item['title']; ?>">
                        </div>
                        <div class="title bg-herofilm absolute w-full px-2 py-10 bottom-0 left-0 right-0 flex items-center justify-between">
                            <div>
                                <p class="font-normal text-lg leading-10 tracking-tighter">
                                    <?php echo $item['title']; ?>
                                </p>
                                <div class="chapters flex gap-2 font-normal text-xs leading-5 text-[#EDEDED]">
                                    <div class="like flex gap-1 items-center">
                                        <svg class="size-4" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <g opacity="0.89">
                                                <path d="..." fill="#6B87F9" />
                                            </g>
                                        </svg>
                                        <span><?php echo $item['rating_count']; ?>/<?php echo $item['rating_total']; ?> đánh giá</span>
                                    </div>
                                    <div class="counter flex gap-1 items-center">
                                        <svg class="size-4" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="..." fill="#F4C26C" />
                                        </svg>
                                        <span><?php echo $item['like_count']; ?> lượt thích</span>
                                    </div>
                                </div>
                            </div>
                            <a href="<?php echo $item['slug']; ?>"
                                class="w-9 h-9 rounded-full bg-primary flex justify-center items-center font-medium text-sm leading-5 text-gray-200">
                                <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="..." fill="white" />
                                </svg>
                            </a>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
</div>
<script>
    function swiperBanner() {
        return {
            swiper: null,
            autoplay: false,
            initSwiper() {
                this.swiper = new Swiper('.hero-banner .swiper', {
                    direction: 'horizontal',
                    loop: true,
                    autoplay: this.autoplay ? {
                        delay: 3000,
                        disableOnInteraction: false,
                    } : false,
                    pagination: {
                        el: '.swiper-pagination',
                        clickable: true,
                        dynamicBullets: true, // Add this line to enable dynamic bullets
                    },
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                });
            },
            toggleAutoplay() {
                this.autoplay = !this.autoplay;
                this.swiper.params.autoplay = this.autoplay ? {
                    delay: 3000,
                    disableOnInteraction: false,
                } : false;
                this.swiper.update();
            },
            init() {
                this.initSwiper();
            }
        }
    }
</script>