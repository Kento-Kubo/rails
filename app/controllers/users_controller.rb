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
    if request.post?
=begin      
    #This part is for testing only(no real data in database yet)
        @user = User.new(
            emails: 'abc@gmail.com'
        )
          session[:email]= @user.emails
          redirect_to("/user/pass_forgot2")
=end
      @user=User.find_by(emails: params[:email])
      if @user
        session[:email]= @user.emails
        redirect_to("/user/pass_forgot2")
      else
        @error_message = "email or number does not exist."
      end
    
    end
  end
  
  def pass_forgot2
    if request.get? #if request comes from pass_forgot or resend token
      session[:token]=rand.to_s[2..7] #generate a random 6 digit token
      Usermailer.send_random_token(session[:email],session[:token]).deliver_now
    
    else #request comes from submit token
      if params[:token] == session[:token]
        redirect_to("/user/edit_info")
        # トークンが合ってたら、パスワードを設定し直す画面に移動すべき
      else
        @error_message = "wrong token"
      end
    end
  end
  
  def edit_info
    @user=User.find_by(emails: session[:email])
    if request.patch?
        @user.update(password:params[:password])
        redirect_to("/user/top")
    end

  end
  
  def new
    # @user=User.new
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
