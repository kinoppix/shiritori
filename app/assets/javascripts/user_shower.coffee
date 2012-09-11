window.Application ||= {}
$(document).ready ->
  socket = io.connect(shower+'user')
  socket.on 'broadcast', (obj) ->
    $('notice').text($('notice').text() + '<br />' + obj.message)
  if shower_token?
    # console.log 'showering started: user_id = ' + user_id
    socket.on user_id+shower_token, (obj) ->
      Application.notify obj.message

Application.notify = (message) ->
  $('#notifications').append('<li>' + message + '</div>')
  $('#notification_icon').addClass('btn-primary')
  $('#notification_icon').removeClass('icon-white')

$(document).ready ->
  $('#notification_icon').click ->
    $('#notification_icon').removeClass('btn-primary')
    $('#notification_icon').addClass('icon-white')
    