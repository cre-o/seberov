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
#= require angular/application
#= require magnific-popup
#= require utility
#= require apartments
#= require location

jQuery ->
  # Founation init
  $(document).foundation()
  # Lazy load images (not load before user can see it)
  $('img').lazyload()
  # MagnificPopup for enlarge images
  $('.zoom-in').magnificPopup({type:'image'});
