# Initialisation
angular.module('seberov', ['duScroll'])

angular.module('seberov').directive 'backImg', ->
  (scope, element, attrs) ->
    attrs.$observe 'backImg', (value) ->
      element.css
        'background-image': 'url(' + value + ')'
        'background-size': 'cover'

# Application controller
angular.module('seberov').controller 'ApplicationController', ($scope, $document) ->
  $scope.fixedHeader = true

  # Main page scroll feature
  if angular.element('#l-main').size() > 0 && Foundation.utils.is_large_up()
    $scope.fixedHeader = false

    $document.on 'scroll', ->
      $scope.fixedHeader = if $document.scrollTop() > 700 then true else false
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
