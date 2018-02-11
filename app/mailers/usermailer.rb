class Usermailer < ApplicationMailer
  default from: 'ganjintest@example.com'
   
   def authentication_email(user)
      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.emails, subject: 'Welcome to Ganjin!')
      
      # ref to this link to add email confirmation token later:
      # https://coderwall.com/p/u56rra/ruby-on-rails-user-signup-email-confirmation-tutorial
   end

   def send_random_token(email,token)
      @token = token 
      mail(to: email, subject: 'Welcome to Ganjin!')
   end
end
