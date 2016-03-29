class UserMailer < ApplicationMailer
 
  
    
    def contact_email(name, email, subject, message)
    	
    	@name = name
    	@email = email
    	@subject = subject
    	@message = message

    	mail(to: email,
         subject: 'test',
         template_path: 'root_path',
         template_name: 'home')
    end	


end
