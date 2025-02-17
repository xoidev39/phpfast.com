<?php 
$buttonUrl = "/{$data['button'][2]}/{$data['posttype']}/{$data['button'][3]}"; 

?>

<div class="addition p-5 mt-5">
    <div class="head-title flex items-center justify-between mb-4">
        <div class="title font-medium text-base leading-6 text-gray-200"><?php echo htmlspecialchars($data['label']); ?></div>
        <a href="<?php echo htmlspecialchars($buttonUrl); ?>" class="btn-link">
            <?php echo htmlspecialchars($data['button'][0]); ?>
            <svg width="8" height="14" viewBox="0 0 8 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M1 13L7 7L1 1" stroke="#EDEDED" stroke-linecap="round" stroke-linejoin="round" />
            </svg>
        </a>
    </div>
    <div class="addition-content pb-14 overflow-hidden">
        <div x-data="swiperAddition()" class="swiper-slider w-[224px]">
            <div class="swiper !overflow-visible">
                <div class="swiper-wrapper">
                    <?php foreach ($data['items'] as $category): ?>
                        <div class="swiper-slide">
                            <div class="flex flex-col justify-between p-4 w-56 h-[268px] rounded-[12px] border border-gray-900">
                                <div class="grid grid-cols-2 gap-2 ">
                                    <?php foreach ($category['items'] as $item): ?>
                                        <div class="item">
                                            <div class="feature-img ">
                                                <a href="<?php echo htmlspecialchars($item['slug']); ?>">
                                                    <img class="aspect-square" src="<?php echo htmlspecialchars($item['feature']->square); ?>" alt="<?php echo htmlspecialchars($item['title']); ?>">
                                                </a>
                                            </div>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                                <div class="action w-full">
                                    <a href="<?php echo htmlspecialchars($category['slug']); ?>" class="flex justify-between items-center font-medium text-sm leading-5 text-gray-200">
                                        <?php echo htmlspecialchars($category['name']); ?>
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M16.5 12L9 19.5L7.95 18.45L14.4 12L7.95 5.55L9 4.5L16.5 12Z" fill="#EDEDED" />
                                        </svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
                <div class="swiper-pagination !-bottom-9"></div>
            </div>
        </div>
    </div>
</div>

<script>
    function swiperAddition() {
        return {
            swiper: null,
            autoplay: false,
            initSwiperAddition() {
                this.swiper = new Swiper('.addition-content .swiper', {
                    direction: 'horizontal',
                    loop: true,
                    spaceBetween: 20,
                    pagination: {
                        el: '.swiper-pagination',
                        clickable: true,
                        dynamicBullets: true,
                    },
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },
                });
            },
            init() {
                this.initSwiperAddition();
            }
        }
    }
</script>