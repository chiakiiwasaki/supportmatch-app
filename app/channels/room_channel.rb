class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'room_channel'
  end

  def unsubscribed
  end

  def speak(message)
    Message.create!(content: message['message'][0], user_id: message['message'][1].to_i, room_id: message['message'][2].to_i)
  end
end
