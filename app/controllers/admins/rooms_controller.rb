class Admins::RoomsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @entries = Entry.where(user_id: @user)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
    @entries = @room.entries
    @user = User.find(params[:id])
  end
end
