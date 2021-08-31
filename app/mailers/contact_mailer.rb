class ContactMailer < ApplicationMailer
  default from: "example@example.com"

  def send_email(contact)
    @contact = contact
    mail(from: ENV['SEND_MAIL'],
         to: ENV['SEND_MAIL'],
         subject: 'お問い合わせ通知')
  end
end
