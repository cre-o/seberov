jQuery ->

  setupSlider = (object) ->
    minValue = object.data('minValue')
    maxValue = object.data('maxValue')
    object.noUiSlider
      start: [ percentageIntegerCalc(maxValue, 20), percentageIntegerCalc(maxValue, 80)],
      range:
        'min': [ minValue ],
        'max': [ maxValue ]

  if $('#l-apartments.__parameters-page').size() > 0
    # Price slider
    setupSlider $('#appartments-price-slider')
    # Floorspace slider
    setupSlider $('#appartments-floorspace-slider')
    # Floor
    setupSlider $('#appartments-floor-slider')

  # Apartments page application form callbacks responder
  if $('#l-apartments.__show-page').size() > 0

    $("#application-form").on("ajax:success", (e, data, status, xhr) ->
      $('.js-thankYouModal').foundation('reveal', 'open')
    ).on "ajax:error", (e, data, xhr, status, error) ->
      $("#application-form .errors").removeClass('hide')
      $("#application-form .errors").append data.responseJSON.errors.join(',')


