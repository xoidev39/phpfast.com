
<div class="hero-banner rounded-b-xl overflow-hidden">
    <div x-data="swiperBanner()" class="swiper-slider">
        <div class="swiper">
            <div class="swiper-wrapper">
                <?php foreach ($data['items'] as $item): ?>
                    <div class="swiper-slide relative">
                        <div class="feature-img">
                            <img class="object-cover w-full h-[335px]"
                                 src="<?= htmlspecialchars($item['images'], ENT_QUOTES, 'UTF-8'); ?>"
                                 alt="<?= htmlspecialchars($item['name'], ENT_QUOTES, 'UTF-8'); ?>">
                        </div>
                        <div class="title absolute w-full px-2 top-16 left-1/2 transform -translate-x-1/2">
                            <p class="font-normal text-2xl leading-10 text-center tracking-tighter">
                                <?= htmlspecialchars($item['label'], ENT_QUOTES, 'UTF-8'); ?>
                                <br>
                                <span class="text-3xl font-semibold mt-9 block">
                                    <?= htmlspecialchars($item['name'], ENT_QUOTES, 'UTF-8'); ?>
                                </span>
                            </p>
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