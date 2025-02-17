<?php  if(!empty($sections)) {
    foreach($sections as $section) {
        print_r($section) ;
    }
}
?>

<script>
    function touchScroll(el) {
        return {
            startX: 0,
            scrollLeft: 0,
            isScrolling: false,
            init() {
                el.addEventListener('mousedown', this.onMouseDown.bind(this));
                document.addEventListener('mousemove', this.onMouseMove.bind(this));
                document.addEventListener('mouseup', this.onMouseUp.bind(this));
                const images = el.querySelectorAll('img');
                images.forEach(img => {
                    img.setAttribute('draggable', 'false');
                });
            },
            onMouseDown(event) {
                this.isScrolling = true;
                this.startX = event.pageX - el.offsetLeft;
                this.scrollLeft = el.scrollLeft;
                // el.style.cursor = 'grabbing';
            },
            onMouseMove(event) {
                if (!this.isScrolling) return;
                const x = event.pageX - el.offsetLeft;
                const walk = (x - this.startX) * 2; // Adjust scroll speed
                el.scrollLeft = this.scrollLeft - walk;
            },
            onMouseUp(event) {
                this.isScrolling = false;
                // el.style.cursor = 'grab';
            }
        }
    }

    document.addEventListener('DOMContentLoaded', () => {
        const scrollContainers = document.querySelectorAll('[data-attr="scroll-container"]');
        scrollContainers.forEach(container => {
            const scrollInstance = touchScroll(container);
            scrollInstance.init();
        });
    });
</script>

