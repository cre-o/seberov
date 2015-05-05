jQuery ->

  setupSlider = (object) ->
    minValue = object.data('minValue')
    maxValue = object.data('maxValue')
    object.noUiSlider
      start: [ percentageIntegerCalc(maxValue, 20), percentageIntegerCalc(maxValue, 80)],
      range:
        'min': [ minValue ],
        'max': [ maxValue ]

  if $('#l-apartments').size() > 0
    # Price slider
    setupSlider $('#appartments-price-slider')
    # Floorspace slider
    setupSlider $('#appartments-floorspace-slider')
    # Floor
    setupSlider $('#appartments-floor-slider')

