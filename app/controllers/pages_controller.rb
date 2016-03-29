class PagesController < ApplicationController
  def home

  end
  def deliver
    @name = params[:name]
    @email = params[:email]
    @subject = params[:subject]
    @message = params[:message]
    UserMailer.welcome_email(@name, @email, @subject, @message).deliver_now
    redirect_to root_path, notice: 'Message sent'  
  end
end
