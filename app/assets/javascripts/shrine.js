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
    dots:true,
    slidesToShow:7,
    variableWidth : true,
    slidesToScroll: 1,
    pauseOnHover: true,
});