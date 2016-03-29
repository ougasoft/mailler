class PagesController < ApplicationController
  def home
  	@name = params[:name]
    @email = params[:email]
    @subject = params[:subject]
    @message = params[:message]
    UserMailer.contact_email(@name, @email, @subject, @message).deliver_now
    redirect_to root_path, notice: 'Message sent'
  end
end
