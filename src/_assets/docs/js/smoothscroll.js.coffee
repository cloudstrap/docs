$("a[href^='#']").on 'click', (e) ->
  originalHash = this.hash
  havbarHeight = $('.startapp-navbar').outerHeight(true);

  e.preventDefault()

  $('html, body').animate
    scrollTop: ($(originalHash).offset().top - havbarHeight),
    300,
    ->
      window.location.hash = originalHash