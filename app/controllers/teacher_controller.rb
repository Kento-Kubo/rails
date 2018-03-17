class TeacherController < ApplicationController
def top
      @teacher = Teacher.new
      print current_teacher
      print "yay"
  end
  
  def index #show all users
      @teacher = Teacher.all
  end
  
  def show #show profile
    
  end

  def new #create registration form
      @teacher=Teacher.new
  end

  def edit #edit profile
    @teacher = Teacher.find_by(id:session[:teacher_id])
  end
  
  def create #save new user
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:notice] = "Your account is registered"
      redirect_to root_path
    else
      @error_message = "登録できませんでした。全ての項目を入力されていることを確認してください。"
      render 'new'
    end
  end
  
  def update #save edit profile
      @teacher = Teacher.find(params[:id])

        
        
    if @teacher.update(teacher_params)
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to teacher_path
    else
      @error_message = "Failed to save changes."
      render :edit
    end
  end
  
  def destroy #delete user
  end
  
  
  private
    def find_teacher
      @teacher = Teacher.find_by(id: params[:id])
    end
    
    def teacher_params
      params.require(:teacher).permit(:name, :email, :skype, :birthday,:sex, :teacher, :password,
                                   :password_confirmation)
    end
    
    def logged_in_teacher
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def correct_teacher
      @teacher = Teacher.find(params[:id])
      if @teacher =! current_teacher
      flash[:notice] = "You are not allowed to access this page"
      redirect_to(root_url) 
      end
    end