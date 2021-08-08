class Admins::RequestsController < ApplicationController
  def index
    @requests = Request.all.page(params[:page])
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

  private
    def request_params
      params.require(:request).permit(:urgency, :item, :quantity, :comment, :postal_code, :location, :phone_number, :email, :name, :is_done)
    end

end
