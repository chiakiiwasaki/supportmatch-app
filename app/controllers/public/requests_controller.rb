class Public::RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_current_user, {only: [:edit, :update]}
  before_action :set_q, only: [:index, :search]

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    if @request.save
      redirect_to her_requests_path(@request.user)
    else
      render 'new'
    end
  end

  def index
    @requests = @q.result.where(is_done: false).joins(:user).where("users.is_valid")
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
    impressionist(@request, nil, unique: [:impressionable_id, :ip_address])
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      redirect_to her_requests_path(@request.user)
    else
      render 'edit'
    end
  end

  def her_requests
    @user = User.find(params[:id])
    @requests = Request.where(user_id: @user.id)
  end

  def search
    @results = @q.result
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to her_requests_path(@request.user)
  end


  private
    def set_q
      @q = Request.ransack(params[:q])
    end

    def request_params
      params.require(:request).permit(:urgency, :item, :quantity, :comment, :postal_code, :location, :phone_number, :email, :name, :is_done, :genre)
    end

    def ensure_current_user
      @request = Request.find(params[:id])
      if @request.user_id != current_user.id
        redirect_to root_path
      end
    end
end
