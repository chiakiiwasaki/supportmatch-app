class Public::HomesController < ApplicationController

  def top
  end

  def about
    @requests = Request.all
    @requests_done = Request.where(is_done: true)
  end

  def result
    @requests = Request.where(is_done: true).page(params[:page])
  end

  def privacy
  end

end
