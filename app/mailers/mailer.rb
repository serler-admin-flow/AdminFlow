class Mailer < ActionMailer::Base
    default :from => "serlergamma@gmail.com"
    default template_path: 'devise/mailer'  
 

 def reset_password_instructions(user,authenticity_token,commit)
    @user = user
    @token = authenticity_token
    mail(to: @user.email, subject: "SERLER Account activation")
 end
 
 
end