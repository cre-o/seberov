# Initialisation
angular.module('statek', [])

angular.module('statek').directive 'backImg', ->
  (scope, element, attrs) ->
    attrs.$observe 'backImg', (value) ->
      element.css
        'background-image': 'url(' + value + ')'
        'background-size': 'cover'

angular.module('statek').controller 'InfoBlockController', ->
  @.show = true

  @.toggle = ->
    @.show = if @.show == true then false else true

  return @


angular.module('statek').controller 'MainPageController', ->
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
angular.module('statek').controller 'ImageBroadcasterController', ->
  @.image = 1

  @.setImage = (newValue) ->
    @.image = newValue

  @.isSet = (imageName) ->
    @.image == imageName

  return @
