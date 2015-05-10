# Initialisation
angular.module('seberov', ['duScroll'])

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


angular.module('seberov').controller 'MainPageController', ->
  @.mapWidth  = 200
  @.mapHeight = 455

  if Foundation.utils.is_medium_only()
    @.mapWidth  = 300

  if Foundation.utils.is_large_only()
    @.mapWidth  = 400

  if Foundation.utils.is_xlarge_only()
    @.mapWidth  = 550

  return @

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
