class RoomChannel < ApplicationCable::Channel
  # def subscribed
  #   # stream_from "some_channel"
  #   5.times { puts '***test***' }
  # end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end

  # def speak
  # end
  def subscribed
    # stream_from "some_channel"
    # 接続された時
    stream_from 'room_channel'
    # stream_from "room_channel_#{params['room']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # 切断された時
  end

  def speak(message)
    Message.create!(content: message['message'][0], user_id: message['message'][1].to_i, room_id: message['message'][2].to_i)
    # ActionCable.server.broadcast 'room_channel', message: message['message'][0]
   # redirect_back(fallback_location: root_path)
  # Message.create! content: message['message']
  # Message.create! content: message['message'], user_id: message.user.id, room_id: params['room']
  # Message.create!(content: message['message'], user_id: message['message'], room_id: message['message'])


  end
end
