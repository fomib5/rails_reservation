$(document).on('turbolinks:load',function() {
  $(".nav-trigger").on('click', function(){
    $(".header-nav-menu").toggle();
  });
});
