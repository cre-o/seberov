angular.module('seberov').controller 'LocationController', ($scope, uiGmapGoogleMapApi) ->

  objectLatitude  = 50.0063763
  objectLongitude = 14.514913

  markers =
    medicine:
        id: 1
        coords:
          latitude: 49.997150
          longitude: 14.516002
        smallIcon: { url: gon.mapMarkerIcons.grey.medicine }
        bigIcon: { url: gon.mapMarkerIcons.big.medicine }

    autobus:
      items: [
        {
          id: 2
          coords:
            latitude: 49.996860
            longitude: 14.517640
        },
        {
          id: 3
          coords:
            latitude: 49.998912
            longitude: 14.517187
        },
        {
          id: 4
          coords:
            latitude: 50.001657
            longitude: 14.515993
        }
      ],
      smallIcon: { url: gon.mapMarkerIcons.grey.autobus }
      bigIcon: { url: gon.mapMarkerIcons.big.autobus }

    relax:
      id: 5
      coords:
        latitude: 49.996779
        longitude: 14.517268
      smallIcon: { url: gon.mapMarkerIcons.grey.relax }
      bigIcon: { url: gon.mapMarkerIcons.big.relax }

    school:
      id: 6
      coords:
        latitude: 50.012353
        longitude: 14.510415
      smallIcon: { url: gon.mapMarkerIcons.grey.school }
      bigIcon: { url: gon.mapMarkerIcons.big.school }

    administration:
      id: 7
      coords:
        latitude: 50.011395
        longitude: 14.514031
      smallIcon: { url: gon.mapMarkerIcons.grey.administration }
      bigIcon: { url: gon.mapMarkerIcons.big.administration }

    police:
      id: 8
      coords:
        latitude: 50.013206
        longitude: 14.513536
      smallIcon: { url: gon.mapMarkerIcons.grey.police }
      bigIcon: { url: gon.mapMarkerIcons.big.police }

    library:
      id: 9
      coords:
        latitude: 50.013206
        longitude: 14.513536
      smallIcon: { url: gon.mapMarkerIcons.grey.library }
      bigIcon: { url: gon.mapMarkerIcons.big.library }

    playground:
      id: 10
      coords:
        latitude: 49.996603
        longitude: 14.517275
      smallIcon: { url: gon.mapMarkerIcons.grey.playground }
      bigIcon: { url: gon.mapMarkerIcons.big.playground }

    sport:
      id: 11
      coords:
        latitude: 50.009919
        longitude: 14.513655
      smallIcon: { url: gon.mapMarkerIcons.grey.sport }
      bigIcon: { url: gon.mapMarkerIcons.big.sport }

  # Map obj
  map = {
    zoom: 14
    center:
      latitude: objectLatitude
      longitude: objectLongitude
    options:
      scrollwheel: false
      streetViewControl: false
      zoomControlOptions:
        style: 3
    events:
      zoom_changed: (mapModel, eventName, originalEventArgs) ->
        if mapModel.zoom <= 12
          $scope.map.markers = []
        else
          $scope.map.markers = markers

    marker:
      coords:
        latitude: 49.999243
        longitude: 14.516158
      options:
        labelContent: 'Statek Seberov'
    markers: markers
  }

  # Mapping initial icons
  reset = ->
    _.each map.markers, (n) ->
      n['icon'] = n.smallIcon

  $scope.currentItem = 'autobus'

  $scope.setCurrentMarkers = (name) ->
    reset()
    map.markers[name]['icon'] = map.markers[name]['bigIcon']
    $scope.currentItem = name

  $scope.setCurrentMarkers($scope.currentItem)

  $scope.isCurrent = (name) ->
    $scope.currentItem == name

  $scope.map = map

  return $scope
