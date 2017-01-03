class ContactController < ApplicationController
  def show

  end

  def contact_email
    name = params[:name]
    body = params[:body]
    email = params[:email]
    ContactMailer.contact_form(name, body, email).deliver_later
    flash.notice = "Email has been sent"
    redirect_to articles_path
  end
end
