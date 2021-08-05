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
  end

  def update
  end

  private
    def request_params
      params.require(:request).permit(:urgency, :item, :quantity, :comment, :postal_code, :location, :phone_number, :email, :name)
    end
end
