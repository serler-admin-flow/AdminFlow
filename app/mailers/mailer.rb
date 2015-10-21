class Mailer < ActionMailer::Base
    default :from => "serlergamma@gmail.com"
    default template_path: 'devise/mailer'  
 

 def confirmation_instructions(user)
    @user = user
    mail(to: @user.email, subject: "SERLER Account activation")
 end
 
 
end