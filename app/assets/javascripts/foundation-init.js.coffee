#= require foundation/foundation
#= require foundation/foundation.slider
#= require foundation/foundation.accordion
#= require foundation/foundation.alert
#= require foundation/foundation.clearing
#= require foundation/foundation.interchange
#= require foundation/foundation.orbit
#= require foundation/foundation.offcanvas
#= require foundation/foundation.reveal

jQuery ->

  # Main big slider
  if $('#main-orbit').length > 0
    $('#main-orbit').foundation
      orbit: {
        pause_on_hover: false,
        timer_speed: 3000,
        animation_speed: 500,
        navigation_arrows: false,
        bullets: false,
        caption_class: 'orbit-caption-middle',
        slide_number: false,
        swipe: true
      }

  # Multi slider
  if $('.js-multi-slider').length > 0
    $('.js-multi-slider.orbit').foundation
      orbit: {
        animation: 'slide',
        next_on_click: true,
        animation_speed: 500,
        navigation_arrows: false,
        slide_number: false,
        next_class: 'orbit-next-bottom',
        prev_class: 'orbit-prev-bottom',
        caption_class: 'orbit-caption-bottom',
        bullets: false,
        circular: true,
        timer: false,
        swipe: true
      }
