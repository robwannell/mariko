class SupportController < ApplicationController
  def index
    @help = ['Please use my name as a supporter', 'I would like to host a coffee or house party for Mariko', 'I would like to display a lawn sign', 'I want to help Get Out the Vote on election day']
  end
  
  
  def send_support_mail
    
    
   
    
    
    
    name = params[:name]
    email = params[:email]
    phone = params[:phone]
    address=params[:address]
    body = params[:comments]
    help = params[:help]
    SupportMailer.support_email(name, email, phone, address, body, help).deliver
    redirect_to root_path, notice: 'Thank you - your message has been sent!'
  end
  
  
end
