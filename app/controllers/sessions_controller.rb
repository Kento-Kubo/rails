class SessionsController < ApplicationController
  def new
  end
  def create
  end
  def destroy
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
