class Admins::RequestsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_q, only: [:index]

  def index
    # @requests = Request.all
    @requests = @q.result
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to admins_requests_path
  end

  def her_requests
    @user = User.find(params[:id])
    @requests = Request.where(user_id: @user.id)
  end

  private
    def set_q
      @q = Request.ransack(params[:q])
    end

    def request_params
      params.require(:request).permit(:urgency, :item, :quantity, :comment, :postal_code, :location, :phone_number, :email, :name, :is_done, :genre)
    end

end
