class MessagesController < ApplicationController
  before_action :set_room

  def create
    @message = Message.create! content: params[:message][:content], message: @message, user: @current_user
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end
end
