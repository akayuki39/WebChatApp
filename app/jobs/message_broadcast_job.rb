class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "room_channel", 
      message: MessagesController.render(partial: "messages/message", locals: { message: message })
  end
end
