class UsersController < ApplicationController
  # layout "users_layout"
  before_action :forbid_login_user, only: [:create, :top]
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :set_current_user

  def top
      @user = User.new
      print current_user
      print "yay"
  end
  
  def index #show all users
      @user = User.all
  end
  
  def show #show profile
    
  end

  def new #create registration form
      @user=User.new
  end

  def edit #edit profile
    @user = User.find_by(id:session[:user_id])
  end
  
  def create #save new user
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Your account is registered"
      redirect_to root_path
    else
      @error_message = "登録できませんでした。全ての項目を入力されていることを確認してください。"
      render 'new'
    end
  end
  
  def update #save edit profile
      @user = User.find(params[:id])
      #if password_current
        #if password_current != @user.password
            #@error_message = "type correct password first"
            #render :edit
        #elsif password != password_confirmation
            #@error_message = "new password and confirm password is not same"
            #render :edit
        #elsif @user.update(user_params)
            #flash[:notice] = "your account is editted"
           # redirect_to user_path
         # else
           # @error_message = "something wrong with the new password.try again"
        #    render :edit
        #  end
                        
      #  else
      #      @error_message = "couldn't edit. information of username and email birthday must be filled and have to be uniqe."
     #       render :edit
      #  end
                
    #  elsif password
    #    @error_message = "if you want to renew your password,type correct password first." 
     #   render :edit
     # elsif @user.update(user_params)
    #    flash[:notice] = "ユーザー情報を編集しました"
    #    redirect_to user_path
    #  else
    #    @error_message = "couldn't edit. information of username and email birthday must be filled and have to be uniqe."
     #   render :edit
     # end
   # end
        
        
    if @user.update(user_params)
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to user_path
    else
      @error_message = "Failed to save changes."
      render :edit
    end
  end
  
  def destroy #delete user
  end
  
  
  private
    def find_user
      @user = User.find_by(id: params[:id])
    end
    
    def user_params
      params.require(:user).permit(:name, :email, :skype, :birthday,:sex, :teacher, :password,
                                   :password_confirmation)
    end
    
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      if @user =! current_user
      flash[:notice] = "You are not allowed to access this page"
      redirect_to(root_url) 
      end
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
        #@user.language= params[:language],
        #@user.hobby= params[:hobby],
        password_current = params[:password0]
        password = params[:password]
        password_confirmation = params[:password2]
        if password_current
                if password_current != @user.password
                    @error_message = "type correct password first"
                    render("main/student_account_edit")
                elsif password != password_confirmation
                    @error_message = "new password and confirm password is not same"
                    render("main/student_account_edit")
                elsif @user.save
                  @user.password = params[:password]
                    if @user.save
                        flash[:notice] = "ユーザー情報を編集しました"
                        redirect_to("/main/student_account/#{@user.id}")
                    else
                         @error_message = "something wrong with the new password.try again"
                         render("main/student_account_edit")
                    end
                    
                else
                  @error_message = "couldn't edit. information of username and email birthday must be filled and have to be uniqe."
                  render("main/student_account_edit")
                end
            
        elsif password
            @error_message = "if you want to renew your password,type correct password first." 
            render("main/student_account_edit")
        elsif @user.save
            flash[:notice] = "ユーザー情報を編集しました"
            redirect_to("/main/index/#{@user.id}")
        else
            @error_message = "couldn't edit. information of username and email birthday must be filled and have to be uniqe."
            render("main/student_account_edit")
        end
    end
=end
end
