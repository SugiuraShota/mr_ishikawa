$ ->
  $(document).on 'turbolinks:load', ->
    url = window.location.pathname
    if String(url).match(/profile/)
      $('.header-menu-profile').addClass('active')
    else
      $('.header-menu-top').addClass('active')