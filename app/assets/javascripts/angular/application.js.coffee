# Initialisation
angular.module('statek', [])

angular.module('statek').controller 'InfoBlockController', ->
  @.show = true

  @.toggle = ->
    @.show = if @.show == true then false else true

  return @
