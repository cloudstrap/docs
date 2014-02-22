linksHandler = ->
  links = externalLinks()
  addTargetBlank link for link in links

externalLinks = ->
  myhost = window.location.hostname
  links = document.links;
  link for link in links when link.hostname isnt myhost

addTargetBlank = (link) ->
  link.target = '_blank'

linksHandler()

$('.docs-tabs a').click (event) ->
  event.preventDefault()
  $(this).tab('show')
  return false

$('.read-more .caption').responsiveEqualHeightGrid()