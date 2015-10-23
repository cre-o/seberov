jQuery ->
  $( ".accordion-navigation" ).each (index) ->
    $(@).addClass('active')
    $(@).children('.content').addClass('active')
