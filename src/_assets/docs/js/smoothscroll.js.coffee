$("a[href^='#']").not('[data-toggle="tab"]').on 'click', (e) ->
  e.preventDefault()
  originalHash = this.hash
  havbarHeight = $('.startapp-navbar').outerHeight(true);

  $('html, body').animate
    scrollTop: ($(originalHash).offset().top - havbarHeight),
    300,
    ->
      window.location.hash = originalHash