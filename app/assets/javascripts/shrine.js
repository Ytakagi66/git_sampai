/*global $*/
$(document).ready(function(){
  $('slider').slick({
    autoplay: true,
    autoplaySpeed: true,
    });
});

$('.horizontal_scroll').slick({
    asNavFor:'.slider',
    focusOnSelect: true,
    slidesToShow:4,
    slidesToScroll:1
});