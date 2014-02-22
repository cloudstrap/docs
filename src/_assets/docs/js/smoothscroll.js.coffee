$("a[href^='#']").not('[data-toggle="tab"]').on 'click', (e) ->
  e.preventDefault()
  originalHash = this.hash

  $('html, body').animate
    scrollTop: ($(originalHash).offset().top ),
    300,
    ->
      window.location.hash = originalHash