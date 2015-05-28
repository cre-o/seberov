#= require_self
#= require angular/controllers/application_controller
#= require angular/controllers/home_controller
#= require angular/controllers/location_controller

# Initialisation
angular.module('seberov', ['duScroll', 'uiGmapgoogle-maps', 'ui.mask'])

# Configuration
angular.module('seberov').config (uiGmapGoogleMapApiProvider) ->
  uiGmapGoogleMapApiProvider.configure
    key: gon.global.gmaps_key,
    v: '3.17',
    libraries: 'weather, geometry, visualization'

#
# Info block
#
angular.module('seberov').controller 'InfoBlockController', ($scope, $document) ->
  $scope.shown = true

  $document.on 'scroll', ->
    $scope.shown = false
    return $scope.$apply()

  $scope.toggle = ->
    $scope.shown = if $scope.shown == true then false else true

  return $scope

#
# Image broadcaster
#
angular.module('seberov').controller 'ImageBroadcasterController', ->
  @.imageNumber = 1
  @.imageUrl = ""

  @.setImage = (newValue, newImageUrl) ->
    @.imageNumber = newValue
    @.imageUrl = newImageUrl

  @.isSet = (imageNumber) ->
    @.imageNumber == imageNumber


  return @

#
# Background image directive
#
angular.module('seberov').directive 'backImg', ->
  (scope, element, attrs) ->
    attrs.$observe 'backImg', (value) ->
      element.css
        'background-image': 'url(' + value + ')'
        'background-size': 'cover'

#
# Resize directive
#
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

# Filter for url trusting
# Example
# ng-src="{ object.url | trusted }"
angular.module('seberov').filter 'trusted', ['$sce', ($sce) ->
    return (url) ->
      return $sce.trustAsResourceUrl(url)
]
