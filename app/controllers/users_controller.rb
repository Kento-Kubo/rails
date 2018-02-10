class UsersController < ApplicationController
  
  layout "users_layout"

  def top
    @user=User.new
  end
  def pass_forgot
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
      render("user/top")
    end
  
  end
  
end
