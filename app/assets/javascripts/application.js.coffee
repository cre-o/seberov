# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#! turbolinks
#
#= require jquery
#= require jquery_ujs
#= require lodash
#= require lazyload
#= require jquery.nouislider.all.min
#= require js-routes
#= require foundation-init
#= require angular
#= require angular-scroll
#= require angular-google-maps
#= require magnific-popup
#= require utility
#= require home
#= require apartments
#= require semantic-ui
#= require semantic-ui/transition
#= require location

jQuery ->

  $(document).foundation()

  # Lazy load images (not load before user can see it)
  $('img.lazy').lazyload()

  # MagnificPopup for enlarge images
  $('.zoom-in').magnificPopup({type:'image'})

  # Galleries
  $('.gallery').each ->
    # the containers for all your galleries
    $(@).magnificPopup
      delegate: 'a'
      type: 'image'
      gallery: enabled: true

  # Sidebar feature
  $('.js-sidebar').sidebar('attach events', '.js-sidebar-toggle')

  # Menu fix for mobile devises
  if Foundation.utils.is_small_only()
    $('.sidebar a[href="/apartments"], .sidebar a[href="/ru/apartments"], .sidebar a[href="/en/apartments"]').each ->
      $(@).prop('href', $(@).prop('href').replace('apartments', 'apartments/by-parameters'))
