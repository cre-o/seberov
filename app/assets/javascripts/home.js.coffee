jQuery ->

  # Main big slider
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
