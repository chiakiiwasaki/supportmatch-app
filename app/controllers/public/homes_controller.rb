class Public::HomesController < ApplicationController

  def top
  end

  def about
    @requests = Request.all
    @requests_done = Request.where(is_done: true)
  end

  def result
    @requests = Request.where(is_done: true).page(params[:page]).reverse_order
  end
end
