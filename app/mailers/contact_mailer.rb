class ContactMailer < ApplicationMailer
  default from: "example@example.com"

  # def received_email(contact)
  #   @contact = contact
  #   mail(:to => contact.email, :subject => 'お問い合わせを承りました')
  # end

  def send_email(contact)
    @contact = contact
    mail(from: ENV['SEND_MAIL'],
         to: ENV['SEND_MAIL'],
         subject: 'お問い合わせ通知')
  end
end
