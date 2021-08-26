App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    $('#messages').append data['message']

  speak: (message) ->
    console.log message
    @perform 'speak', message: message

jQuery(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13
    console.log $('[data-user]').attr('data-user')
    console.log '==================================='
    console.log $('[data-room]').attr('data-room')
    App.room.speak [event.target.value, $('[data-user]').attr('data-user'), $('[data-room]').attr('data-room')]
    event.target.value = ''
    event.preventDefault()
