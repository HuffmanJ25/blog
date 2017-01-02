class ContactController < ApplicationController
  def show

  end

  def contact_email
    name = params[:name]
    body = params[:body]
    email = params[:email]
    ContactMailer.contact_mailer(name, body, email)
  end
end
