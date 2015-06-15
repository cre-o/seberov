(($) ->
  $.fn.lazyInterchange = ->
    selectors = @each(->
      if $(this).attr('data-lazy')
        $(this).attr 'data-interchange', $(this).attr('data-lazy')
        $(this).removeAttr 'data-lazy'
        $(this).foundation 'interchange', 'reflow'
      return
    )
    selectors

  return
) jQuery

jQuery ->
  # Lazy load images (not load before user can see it)
  $('img').lazyInterchange()
