class LessonsController < ApplicationController
 before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def index
  end
  
  def new

    @teacher = Teacher.find_by(id: params[:id])
    @time= params[:time1]
    @lesson = Lesson.new
  end
  
  def create  #make a new reservation
    @lesson = Lesson.new(time: params[:time],
                         user_id: current_user.id,
                         teacher_id: params[:teacher_id],
                         date: params[:date],
                         condition: 2,                                  # 1:done , 2:reserved
                         Japanese_skill: params[:Japanese_skill])    
 
    @lesson.save
     
    if @lesson.save
      
      redirect_to("/main/mypage_student")
    else
      @error_message = "登録できませんでした。全ての項目を入力されていることを確認してください。"
      render 'lessons/new'
    end
    
  end
  
  def update
  
  end
 
 
 def cancel
  lesson = Lesson.find_by(id: params[:id])
  lesson.destroy
  redirect_to("/main/mypage_student")
  
  end

end

