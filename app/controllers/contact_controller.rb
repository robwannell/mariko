class ContactController < ApplicationController
  def index
    
  end

  def send_mail
      name = params[:name]
      email = params[:email]
      body = params[:comments]
      ContactMailer.contact_email(name, email, body).deliver
      redirect_to root_path, notice: 'Thank you - your message has been sent!'
  end
     
end