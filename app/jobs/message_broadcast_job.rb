class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel', message: render_message(message)
  end

  private
    def render_message(message)
      ApplicationController.render_with_signed_in_user(message.user, partial: 'public/messages/message', locals: { message: message })
    end
end
