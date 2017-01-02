class ContactMailer < ApplicationMailer
  def contact_mailer(name, body, email)
    @body = body
    mail(to: 'huffmanj25@gmail.com', subject: 'Contact Form')
  end
end
