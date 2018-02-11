class UsersController < ApplicationController
  
  layout "users_layout"

  def top
    # @user=User.new
  end
  
  def email_authentication  
    @user = User.new(
      emails: params[:emails]
    )
    Usermailer.authentication_email(@user).deliver_now
    flash[:notice] = "A confirmation email has been sent to your email address. 
        Please click on the link in the email in order to activate your account."
    redirect_to("/user/top")
  end
  
  def pass_forgot
    # 入力はメールか電話番号の判断は、今データベースで電話番号の行がないからあとでかく
    # トークンって必要？
    if request.post?
        @user=User.find_by(emails: params[:email_or_tel])
        if @user
          Usermailer.send_random_token(@user).deliver_now
          redirect_to("/user/pass_forgot2")
        else
          @error_message = "email or number does not exist."
        end
    end
  end
  
  def pass_forgot2
    # メールにランダムなトークンを送ったら、パスワードを設定し直す画面に移動すべき
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
