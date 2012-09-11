# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.Application ||= {}
Application.room_ready = ->
  $('#new_message').bind 'ajax:beforeSend', (event) ->
    # console.log $('#message_comment').val()
    # $('#message_comment').val($('#message_comment').val()+'=')
    $('#message_comment').val('')

  $('#new_message').bind 'ajax:failure', ->
    console.log 'something wrong in messaging'

  # load
  $.ajax(
    type: 'GET'
    url: '/rooms/'+room_id+'/messages.json'
    dataType: 'json'
    success: (messages) ->
      text = ''
      $.each messages, (i, message) ->
        text += message.comment + "\n"
      $('#tail').text(text)
  )
  ###
  commentCollection = new CommentCollection;
  commentView = new CommentView( { model: commentCollection })
  commentView.$el.appendTo($('#comment_view'))
  commentView.comment_through = 3000
  commentView.width = 420
  commentView.height = 315
  commentView.play()
  color = ["white", "red", "pink", "orange", "yellow", "green", "cyan", "blue", "purple", "black"]
  color_index = 0
  commentCollection.add(new Comment( { text: 'てすつ', font_size: 'big', font_color: color[color_index] } ))
  ###
