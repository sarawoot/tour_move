ready = ->

  "use strict"
  
  # introLoader - Preloader
  $("#introLoader").introLoader
    animation:
      name: 'gifLoader'
      options:
        ease: 'easeInOutCirc'
        style: 'dark bubble'
        delayBefore: 500
        delayAfter: 0
        exitTime: 300

  # Sticky Header
  $(".container-wrapper").waypoint( ->
      $(".navbar").toggleClass 'navbar-sticky'
      false
    { offset: '-20px' })

  # Mouse-enter dropdown
  $('#navbar li').on('mouseenter', ->
    $(this).find('ul').first().stop(true, true).delay(350).slideDown(500, 'easeInOutQuad')
  )
  # Mouse-leave dropdown
  $('#navbar li').on("mouseleave", ->
    $(this).find('ul').first().stop(true, true).delay(100).slideUp(150, 'easeInOutQuad')
  );
    
  # Slicknav - a Mobile Menu
  $('#responsive-menu').slicknav
    duration: 300
    easingOpen: 'easeInExpo'
    easingClose: 'easeOutExpo'
    closedSymbol: '<i class="fa fa-plus"></i>'
    openedSymbol: '<i class="fa fa-minus"></i>'
    prependTo: '#slicknav-mobile'
    allowParentLinks: true
    label: ''

  # Placeholder
  $("input, textarea").placeholder()
  
  # Bootstrap tooltips
  $('[data-toggle="tooltip"]').tooltip()

  # Back To Top
  $(window).scroll ->
    if($(window).scrollTop() > 500)
      $("#back-to-top").fadeIn(200)
    else
      $("#back-to-top").fadeOut(200)
  
  $('#back-to-top').on("click", ->
    $('html, body').animate({ scrollTop:0 }, '800')
    false
  )

  $(".navbar-arrow > ul > li").has("ul").children("a").append("<i class='arrow-indicator fa fa-angle-down'></i>");
  $(".navbar-arrow ul ul > li").has("ul").children("a").append("<i class='arrow-indicator fa fa-angle-right'></i>");

  # select2 - custom select
  $(".select2-single").select2
    allowClear: true
  $(".select2-no-search").select2
    dropdownCssClass: 'select2-no-search'
    allowClear: true
  $(".select2-multi").select2

  # Boostrap alert
  Growlyflash.defaults = $.extend on, Growlyflash.defaults,
    align:   'center'
    delay:   10000 
    title:   no

  Growlyflash.helpers = $.extend on, Growlyflash.helpers,
    title: (s) -> ""
  
  true

$(document).ready ready 
$(document).on 'page:load', ready
  
