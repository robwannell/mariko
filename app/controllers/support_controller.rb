class SupportController < ApplicationController
  def index
  end
  
  
  def send_support_mail
    
    
   
    
    
    
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    usename = params[:usename]
    coffee = params[:coffee]
    lawnsign = params[:lawnsign]
    gotv = params[:GOTV]
    SupportMailer.support_email(name, email, body, usename, coffee).deliver
    redirect_to root_path, notice: 'Thank you - your message has been sent!'
  end
  
  
end
