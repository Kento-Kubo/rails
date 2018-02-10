class Usermailer < ApplicationMailer
  default from: 'ganjintest@example.com'
   
   def email_test()
    #   @user = user
      @url  = 'http://www.gmail.com'
    #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    mail(to: 'ganjintest@gmail.com', subject: 'Welcome to My Awesome Site')

   end

end
