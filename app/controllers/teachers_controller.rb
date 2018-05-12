class TeachersController < ApplicationController
  before_action :logged_in_teacher, only: [:edit, :update]
  before_action :correct_teacher,   only: [:edit, :update]
  before_action :find_teacher, only: [:show, :edit, :update, :destroy]
  def top
      @teacher = Teacher.new
  end
  
  def index #show all teachers
      @teacher = Teacher.all
  end
   def index2 #show all teachers
      @teachers = Teacher.all
  end
  
  def show #show profile
    td = Date.today
  end

  def new #create registration form
      @teacher=Teacher.new
  end

  def edit #edit profile
    @user = current_user
  end
  
  def create #save new teacher
    @teacher = Teacher.new(teacher_params)
    @teacher.age=Date.today.year-@teacher.birthday.year-1
    @teacher.teacher = true
    if @teacher.save
    flash[:notice] = "Your account is registered"
    redirect_to teachers_top_path
    else
      @error_message = "登録できませんでした。全ての項目を入力されていることを確認してください。"
      render 'new'
    end
  end
  
  def update #save edit profile
    if @teacher.update(teacher_params)
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to teacher_path
    else
      @error_message = "Failed to save changes."
      render :edit
    end
  end
  
  def destroy #delete teacher
  end
  
  
  private
    def find_teacher
      @teacher = Teacher.find_by(id: params[:id])
    end
    
    def teacher_params
      params.require(:teacher).permit(:name, :email, :skype, :birthday,:sex, :teacher, :password,
                                   :password_confirmation,:hobby,:language,:profile,:cost)
    end
    
    def logged_in_teacher
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def correct_teacher
      @teacher = Teacher.find(params[:id])
      if @teacher =! current_user
      flash[:notice] = "You are not allowed to access this page"
      redirect_to(root_url) 
      end
    end
end
