---
#站点用的js
---

$ ->
  initTotop()
  bindToTop()


initTotop = () ->
  $(window).scroll (event) ->
    winPos = $(window).scrollTop();
    $("#totop").show() if winPos > window.screen.height
    $("#totop").hide() if winPos < window.screen.height

bindToTop = () ->
  $('#totop').on 'click',() ->
    $('html, body').animate scrollTop: 0,1000
