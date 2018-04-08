class MainController < ApplicationController

   def index
   #データベースより全先生データ取得
    @users = User.all
    #@teachers = Teacher.all
    @teachers = Teacher.all
    #年齢計算
    
  end
  
  def mypage_teacher
    @teacher = Teacher.find_by(id:session[:user_id])
  end
  
  def mypage_student
    @user = User.find_by(id:session[:user_id])
    @lessons =Lesson.where(user_id: @user.id).where(condition:0)
    @count_reserved = Lesson.where(user_id: @user.id).where(condition:0).length
    @count_done = Lesson.where(user_id: @user.id).where(condition:1).length
    @teachers = Teacher.all
    
  end
 
  
  def teacher_account_edit
    @user=find_by[id: params[:id]]
  end
 
      # before_action :authenticate_user

       def student_account_edit
        @user = User.find_by(id:session[:user_id])
       end
       def student_account_edit_confirm
       end

      
end  
    

