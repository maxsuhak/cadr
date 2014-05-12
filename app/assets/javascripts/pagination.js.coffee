jQuery ->

  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_ = $('#infinite-scrolling .next_page a').attr('href')
      if more_ && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('#infinite-scrolling .pagination').html(
          '<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
        $.getScript more_
      return

  return
