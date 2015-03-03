class SupportController < ApplicationController
  def index
    @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Mariko', 'Make phone calls for Mariko','Walk precincts with Mariko', 'Display and/or deliver a lawn sign for Mariko', 'Help Get-Out-the-Vote']
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
