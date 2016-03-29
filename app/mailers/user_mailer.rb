class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end
