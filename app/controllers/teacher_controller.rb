class TeacherController < ApplicationController
def top
      @teacher = Teacher.new
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
