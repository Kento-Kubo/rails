class UserController < ApplicationController
  
  def pass_forgot
  end
  def pass_forgot2
  end
  def new
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
      render("user/new")
    end
  end
  
  def login
    # メールアドレスのみを用いて、ユーザーを取得するように書き換えてください
    @user = User.find_by(emails: params[:emails] ,password: params[:password])
    # if文の条件を&&とauthenticateメソッドを用いて書き換えてください
    if @user 
      flash[:notice] = "ログインしました"
      redirect_to("/main/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @emails = params[:emails]
      @password = params[:password]
      render("user/top")
    end
  
  end
  
end
