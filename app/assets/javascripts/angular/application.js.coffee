#= require_self
#= require angular/main

# Initialisation
angular.module('seberov', ['duScroll', 'ui.mask'])

# Filter for url trusting
# Example
# ng-src="{ object.url | trusted }"
angular.module('seberov').filter 'trusted', ['$sce', ($sce) ->
    return (url) ->
      return $sce.trustAsResourceUrl(url)
]

# Application controller
angular.module('seberov').controller 'ApplicationController', ($scope, $document) ->
  $scope.fixedHeader = false

  # Main page scroll feature
  $document.on 'scroll', ->
    $scope.fixedHeader = true
    return $scope.$apply()

  return $scope

# Info block
angular.module('seberov').controller 'InfoBlockController', ($scope, $document) ->
  $scope.shown = true

  $document.on 'scroll', ->
    $scope.shown = false
    return $scope.$apply()

  $scope.toggle = ->
    $scope.shown = if $scope.shown == true then false else true

  return $scope

# LocationController
angular.module('seberov').controller 'LocationController', ['$sce', ($sce) ->
  location = @
  location.url = "https://www.google.com/maps/embed/v1/place?key=AIzaSyCNLWjn5799hEu-qIfL5nHU1lskw3Wnxqs&q="

  return location
]

# Image broadcaster
angular.module('seberov').controller 'ImageBroadcasterController', ->
  @.imageNumber = 1
  @.imageUrl = ""

  @.setImage = (newValue, newImageUrl) ->
    @.imageNumber = newValue
    @.imageUrl = newImageUrl

  @.isSet = (imageNumber) ->
    @.imageNumber == imageNumber


  return @

angular.module('seberov').directive 'backImg', ->
  (scope, element, attrs) ->
    attrs.$observe 'backImg', (value) ->
      element.css
        'background-image': 'url(' + value + ')'
        'background-size': 'cover'


# Resize directive
angular.module('seberov').directive 'resize', ($window) ->
  (scope, element, attr) ->
    w = angular.element($window)
    scope.$watch (->
      {
        'h': window.innerHeight
        'w': window.innerWidth
      }
    ), ((newValue, oldValue) ->
      console.log newValue, oldValue
      scope.windowHeight = newValue.h
      scope.windowWidth = newValue.w

      scope.resizeWithOffset = (offsetH) ->
        scope.$eval attr.notifier
        { 'height': newValue.h - offsetH + 'px' }

      return
    ), true
    w.bind 'resize', ->
      scope.$apply()
