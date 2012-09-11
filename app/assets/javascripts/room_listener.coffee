window.Application ||= {}
Application.listen = (room_id, target) ->
  socket = io.connect(shower+'room'+room_id)
  socket.on 'broadcast', (obj) ->
    $(target).text($(target).text() + obj.message+"\n")