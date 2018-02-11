class Usermailer < ApplicationMailer
  default from: 'ganjintest@example.com'
   
   def authentication_email(user)
      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.emails, subject: 'Welcome to Ganjin!')
   end

   def send_random_token(user)
      @user = user
      @token=rand.to_s[2..7] #generate a random 6 digit token
      mail(to: @user.emails, subject: 'Welcome to Ganjin!')
   end
end
