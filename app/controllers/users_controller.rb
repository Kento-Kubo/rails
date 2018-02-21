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
#=begin      
    #This part is for testing only(no real data in database yet)
        @user = User.new(
            emails: 'abc@gmail.com'
        )
          session[:email]= @user.emails
          redirect_to("/user/pass_forgot2")
#=end
#      @user=User.find_by(emails: params[:email_or_tel])
#      if @user
#        session[:email]= @user.emails
#        redirect_to("/user/pass_forgot2")
#      else
#        @error_message = "email or number does not exist."
#      end
    
    end
  end
  
  def pass_forgot2
    if request.get? #if request comes from pass_forgot or resend token
      session[:token]=rand.to_s[2..7] #generate a random 6 digit token
      Usermailer.send_random_token(session[:email],session[:token]).deliver_now
    
    else #request comes from submit token
      if params[:token] == session[:token]
        redirect_to("/user/top")
        # トークンが合ってたら、パスワードを設定し直す画面に移動すべき
      else
        @error_message = "wrong token"
      end
    end
  end
  
  def new
    @user=User.new
  end
  
  def pre_login
    @user = User.new(
      name: params[:name],
      sex: params[:sex],
      birthday_year: params[:birthday_year],
      birthday_month: params[:birthday_month],
      birthday_day: params[:birthday_day],
      skype: params[:skype],
      emails: params[:emails],
      password: params[:password]
    )
    password = params[:password]
    password_confirmation = params[:password2]
    if password != password_confirmation
        @error_message = "パスワードと確認用パスワードが一致しません。"
        render("users/new")
    elsif @user.save
      flash[:notice] = "ユーザー登録が完了しました。ログインしてください。"
      redirect_to("/user/top")
    else
        @error_message = "登録できませんでした。全ての項目を入力されていることを確認してください。"
      render("users/new")
    end
  end
  
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
    
    def account_edit 
        @user = User.find_by(id:params[:id])
        @user.name = params[:name]
        @user.emails = params[:emails]
        @user.sex = params[:sex]
        @user.birthday_year = params[:birthday_year]
        @user.birthday_month = params[:birthday_month]
        @user.birthday_day = params[:birthday_day]

        @user.password = params[:password]
        password = params[:password]
        password_confirmation = params[:password2]
        if password != password_confirmation
        @error_message = "パスワードと確認用パスワードが一致しません。"
        render("main/student_account_edit")
        elsif @user.save
          flash[:notice] = "ユーザー情報を編集しました"
          redirect_to("/main/index/#{@user.id}")
        else
          @error_message = "編集できませんでした。全ての項目を入力されていることを確認してください。あるいは名前もしくはメールアドレスが二重登録されています。"
          render("main/student_account_edit")
        end
    end
  
end
