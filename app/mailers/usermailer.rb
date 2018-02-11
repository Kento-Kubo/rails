class Usermailer < ApplicationMailer
  default from: 'ganjintest@example.com'
   
   def authentication_email(user)
      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.emails, subject: 'Welcome to Ganjin!')
   end

end
