class UsersController < ApplicationController
  
  layout "users_layout"

  def top
    @user=User.new
  end
  
  def email_authentication  
    @user = User.new(
      emails: params[:user][:emails],
    )
    Usermailer.authentication_email(@user).deliver_now
    flash[:notice] = "A confirmation email has been sent to your email address. 
        Please click on the link in the email in order to activate your account."
    redirect_to("/user/top")
  end
  
  def pass_forgot
    # Usermailer.email_test().deliver_now

  end
  def pass_forgot2
  end
  def new
    @user=User.new
  end
  def pre_login
    @user = User.new(
      name: params[:name],
      emails: params[:emails],
      password: params[:password]
    )
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました。ログインしてください。"
      redirect_to("/user/top")
    else
        @error_message = "登録できませんでした。全ての項目を入力の上,アドレスが既に登録されていないかご確認ください。"
      render("users/new")
    end
  end
  
  def login
    @user = User.find_by(emails: params[:emails] ,password: params[:password])
    if @user 
      flash[:notice] = "ログインしました"
      session[:user_id]= @user.id
      redirect_to("/main/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @emails = params[:emails]
      @password = params[:password]
      render("users/top")
    end
  
  end
  
end
