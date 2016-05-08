ready = ->
  $(".select2-multi").select2 {}

  $('.grid').responsivegrid
    gutter: '0'
    itemSelector: '.grid-item'
    breakpoints:
      desktop:
        range: '1200-'
        options:
          column: 20
      'tablet-landscape':
        range: '1000-2000'
        options:
          column: 20
      'tablet-portrate':
        range: '767-1000',
        options:
          column: 20
      'mobile-landscape':
        range: '-767'
        options:
          column: 10
      'mobile-portrate':
        range: '-479'
        options:
          column: 10

  true

$(document).ready ready 
$(document).on 'page:load', ready