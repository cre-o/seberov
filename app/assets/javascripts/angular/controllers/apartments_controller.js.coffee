angular.module('seberov').controller 'ApartmentsController', ($scope, $document, $http) ->
  calculator = {}
  calculator.defaultCurrency = 'czk'
  calculator.currencies = ['czk', 'usd', 'eur']
  calculator.priceSigns = {
    eur: '€'
    czk: 'KČ'
    usd: '$'
  }
  calculator.currency = calculator.defaultCurrency
  calculator.basePrice = 0
  calculator.price = calculator.basePrice
  calculator.exchangeUrl = "http://api.fixer.io/latest?base=CZK"

  # Caching feature limits requests
  cached = {}
  cached['usdRates'] = null
  cached['eurRates'] = null

  calculator.decoratedPrice = ->
    "#{calculator.price} #{calculator.priceSigns[calculator.currency]}"

  calculator.setCurrency = (currency) ->
    calculator.currency = currency
    calculator.calculate()

  calculator.calculate = ->
    if calculator.currency == 'czk'
      calculator.price = calculator.basePrice
    else
      if cached["#{calculator.currency}Rates"] != null
        calculator.price = Math.round(calculator.basePrice * cached["#{calculator.currency}Rates"])
      else
        $http.get(calculator.exchangeUrl).success (data) ->
          rates = data.rates[calculator.currency.toUpperCase()]
          # Caching
          cached["#{calculator.currency}Rates"] = rates

          calculator.price = Math.round(calculator.basePrice * rates)

  $scope.calculator = calculator
  return $scope

angular.module('seberov').controller 'ApartmentsMapController', ($scope, $http, $document, $sce, $timeout) ->
  map = @
  map.buildings = ['a', 'b', 'c', 'd']
  map.building = 'a'
  map.floor = 1
  map.apartments = []
  map.currentApartment = null
  map.tooltip = false

  options = {
    waitAfterMouseEnter: 2000 # milliseconds
  }

  tmp = {
    clickedAt: null
  }

  $http.get('/apartments.json').success (data) ->
    map.apartments = data

  map.setBuilding = (object, event = 'hover') ->
    if tmp.clickedAt != null && (Date.now() - tmp.clickedAt) < options.waitAfterMouseEnter
      return false
    else if event == 'click'
      tmp.clickedAt = Date.now()

      map.floor = object.floor
      map.building = object.building
    else
      map.floor = object.floor
      map.building = object.building

  map.setCurrentApartment = (apartment) ->
    map.currentApartment = apartment if apartment.state == 'active'

  map.rerender = ->
    map.renderClass = "building-#{map.building}-floor-#{map.floor}"

  map.renderClass = ->
    return map.renderClass

  map.showTooltip = ->
    $timeout ->
      if map.tooltip == false
        $scope.tooltipHtml = $sce.trustAsHtml(angular.element('#base-tooltip').html())
        map.tooltip = true
    , 50

  map.hideTooltip = ->
    $scope.tooltipHtml = ""
    map.tooltip = false

  # Make href only for available apartments
  map.apartmentHref = (apartment) ->
    if apartment.state == 'active' then Routes.refinery_apartments_apartment_path(apartment.id) else '#'

  return $scope


