document.addEventListener('DOMContentLoaded', function () {
    const toggleMenu = function () {
      $("#bugger-menu").click(function () {
        $(".sidebar").toggleClass("active");
        if ($(".sidebar").hasClass('active')){
            $('.sidebar li.active a').removeClass('active');
            $('.sidebar li.active').removeClass('active');
            $("#bugger-menu").attr('style', 'transform: scaleX(-1);');
        }else{
            $("#bugger-menu").attr('style', '');
        }
      });
    };
    toggleMenu();
    feather.replace();
});

function toggleDropdown(event, element) {
  if (!$(".sidebar").hasClass('active')){
      if ($(element).hasClass('nochild')){
          return true;
      }
      // Thêm hoặc xóa lớp 'active' cho phần tử được click
      element.classList.toggle('active');
      element.parentElement.classList.toggle('active');
      event.preventDefault();
      return false;
  }else{
      $(element).find('.feather-chevron-right').removeClass('rotate-90');
      event.preventDefault();
      return false;
  }
}

