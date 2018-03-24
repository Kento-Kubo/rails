class MainController < ApplicationController

  def index3
   #データベースより全先生データ取得
    @users = User.all
    @teachers = User.where(teacher: true)
    #年齢計算
    
    #
    
  end
   def index
   #データベースより全先生データ取得
    @users = User.all
    #@teachers = Teacher.all
    @teachers = Teacher.all
    #年齢計算
    
    
    
  end
 
  
  def teacher_account_edit
    @user=find_by[id: params[:id]]
  end
 
      before_action :authenticate_user

       def student_account_edit
        @user = User.find_by(id:session[:user_id])
       end
       def student_account_edit_confirm
       end

      
end  
    

