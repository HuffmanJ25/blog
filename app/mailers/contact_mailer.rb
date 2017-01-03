class ContactMailer < ApplicationMailer
  def contact_form(name, body, email)
    @body = body
    mail(to: 'huffmanj25@gmail.com', subject: 'Contact Form')
  end
end
