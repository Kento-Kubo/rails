class UsersController < ApplicationController
  layout "users_layout"
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index #show all users
      @user = User.all
  end
  
  def show #show profile
  end

  def new #create registration form
    @user = User.new
  end

  def edit #edit profile
  end
  
  def create #save new user
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def update #save edit profile
    if @user.update(user_params)
      redirect_to user_path
    else
      flash.now[:alert] = 'user profile could not be updated.'
      render :edit
    end
  end
  
  def destroy #delete user
  end
  
  
  private
    def find_user
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:name, :emails, :password,
                                   :password_confirmation)
    end






=begin

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
=end
end
