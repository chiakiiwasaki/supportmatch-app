class Public::RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    if @request.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @requests = Request.where(is_done: false).page(params[:page]).reverse_order
  end

  def show
    @request = Request.find(params[:id])
    @user = @request.user
    current_user_entry = Entry.where(user_id: current_user.id)
    user_entry = Entry.where(user_id: @user.id)
    unless @user.id == current_user.id
      current_user_entry.each do |cu|
        user_entry.each do |u|
          if cu.room_id == u.room_id then
            @is_room = true
            @room_id = cu.room_id
          end
        end
      end
      if @is_room
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to requests_my_requests_path
  end

  def my_requests
    @requests = Request.where(user_id: current_user.id).page(params[:page]).reverse_order
  end

  private
    def request_params
      params.require(:request).permit(:urgency, :item, :quantity, :comment, :postal_code, :location, :phone_number, :email, :name, :is_done)
    end
end
