class ContactMailer < ApplicationMailer
  require 'mail'
  def contact_form(name, message, email)
    mail = Mail.new do
      from 'Develocity@blog.com'
      to 'huffmanj25@gmail.com'
      subject 'contact form'
      body = message
    end
    mail.deliver!
  end
end
