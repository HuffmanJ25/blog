class ContactController < ApplicationController
  def show

  end

  def contact_email
    name = params[:name]
    body = params[:body]
    email = params[:email]
    ContactMailer.contact_form(name, body, email).deliver_now
  end
end
