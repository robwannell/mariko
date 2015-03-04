class SupportController < ApplicationController
  def new
    @support = Support.new
    
    @title = "Support Mariko"
    @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Mariko', 'Make phone calls for Mariko','Walk precincts with Mariko', 'Display and/or deliver a lawn sign for Mariko', 'Help Get-Out-the-Vote']
  end
  

  def create
    @support = Support.new(params[:support])
    name = @support.name
    email = @support.email
    phone = @support.phone
    address = @support.address
    body = @support.body
    @help = params[:help]
    
    if @support.valid?
      SupportMailer.support_email(name, email, phone, address, body, @help).deliver
      redirect_to root_path, notice: 'Thank you - your message has been sent!'
    else
      @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Mariko', 'Make phone calls for Mariko','Walk precincts with Mariko', 'Display and/or deliver a lawn sign for Mariko', 'Help Get-Out-the-Vote']
      render :new
    end
  end
  
   
    
    
  
   
  
  
  
   
    
    
  
end
