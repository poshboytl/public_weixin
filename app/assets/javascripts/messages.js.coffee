#= require jquery.masonry.min

$ ->
  $("#messages").on "click", ".like", (e) ->
    e.preventDefault();
    e.stopPropagation();
    url = "/b/#{$(e.currentTarget).data('bizid')}/m/#{$(e.currentTarget).data('msgid')}/votes"
    ajax = $.ajax
      url: url
      type: "POST"
    ajax.done ->
      $(e.currentTarget).attr('class', 'liked')

  $("#messages").on "click", ".liked", (e) ->
    e.preventDefault();
    e.stopPropagation();
    url = "/b/#{$(e.currentTarget).data('bizid')}/m/#{$(e.currentTarget).data('msgid')}/votes"
    ajax = $.ajax
      url: url
      type: "DELETE"
    ajax.done ->
      $(e.currentTarget).attr('class', 'like')