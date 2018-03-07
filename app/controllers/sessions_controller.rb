class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to('/main/index')
    else
      # Create an error message.
      redirect_to root_url,:notice => "Invalid login. Try again" 
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
  
=begin

  def login
    @user = User.find_by(emails: params[:emails] ,password: params[:password])
    if @user 
      flash[:notice] = "ログインしました"
      session[:user_id]= @user.id
      redirect_to("/main/index/#{@user.id}")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @emails = params[:emails]
      @password = params[:password]
      render("users/top")
    end
  end
    
    def logout
        session[:user_id] = nil
    end
=end
end
