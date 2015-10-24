jQuery ->
  #
  # GET apartments/by-parameters
  # Search by parameters page
  #
  setupSlider = (object, options = {}) ->
    minValue = object.data('minValue')
    maxValue = object.data('maxValue')

    defaultOptions =
      start: [ minValue, maxValue],
      connect: true,
      format: wNumb({ mark: '', decimals: 1}),
      range:
        'min': [ minValue ],
        'max': [ maxValue ]

    object.noUiSlider _.merge(defaultOptions, options)

  if $('#l-apartments.__parameters-page').size() > 0
    # Price slider
    setupSlider($('#appartments-price-slider'), { step: 10000 })
    .Link('lower').to($('#price-min'))
    .Link('upper').to($('#price-max'))

    # Clickable way to bind with angular models
    $('#appartments-price-slider').on
      change: ->
        $('#price-min').trigger('input')
        $('#price-max').trigger('input')

    # Floorspace slider
    setupSlider $('#appartments-floorspace-slider')
    .Link('lower').to($('#floorspace-min'))
    .Link('upper').to($('#floorspace-max'))

    $('#appartments-floorspace-slider').on
      change: ->
        $('#floorspace-min').trigger('input')
        $('#floorspace-max').trigger('input')

    # Floors
    setupSlider $('#appartments-floor-slider'), { step: 1 }
    .Link('lower').to($('#floor-min'))
    .Link('upper').to($('#floor-max'))

    $('#appartments-floor-slider').on
      change: ->
        $('#floor-min').trigger('input')
        $('#floor-max').trigger('input')

  #
  # GET apartments/id
  # Apartments page application form callbacks responder
  #
  if $('#l-apartments.__show-page').size() > 0
    $("#application-form, #mortgage-form").on("ajax:success", (e, data, status, xhr) ->
      $('#mortgage-calculator').foundation('reveal', 'close')
      $('.js-thankYouModal').foundation('reveal', 'open')
    ).on "ajax:error", (e, data, xhr, status, error) ->
      $("#application-form .errors").removeClass('hide')
      $("#application-form .errors").append data.responseJSON.errors.join(',')

