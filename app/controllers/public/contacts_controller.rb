class Public::ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render 'new'
  end

  def confirm
    @contact = Contact.new(params[:contact].permit(:name, :email, :message))
    if @contact.valid?
      render 'confirm'
    else
      render 'new'
    end
  end

  def thanks
    @contact = Contact.new(params[:contact].permit(:name, :email, :message))
    ContactMailer.send_email(@contact).deliver
    render 'thanks'
  end
end
