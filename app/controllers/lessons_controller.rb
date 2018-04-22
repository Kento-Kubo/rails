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
    times = params[:time].inspect
    count = times.length
    
     (0..count).each do |num|

    @lesson = Lesson.new
    @lesson.time = times[num].to_s
    @lesson.teacher_id= current_user.id
    @lesson.condition= 2
    #time: params[:time],
                        # teacher_id: current_user.id,
                        # date: params[:date],
                        # condition: 3 )                                 # 1:done , 2:reserved, 3:available
                             
 
    @lesson.save
    
   end
    
    
    
    
    
     
    if @lesson.save
      
      redirect_to("/main/mypage_student")
    else
      @error_message = "登録できませんでした。全ての項目を入力されていることを確認してください。"
      render 'lessons/new'
    end
    
  end
  
  def reserve
     
    @teacher = Teacher.find_by(id: params[:id])
    @time= params[:time]
    @lesson = Lesson.find_by(id: params[:lid])
    
  end
  
    def update_reserve
    @lesson = Lesson.find_by(id: params[:lesson_id])
 
    @lesson.condition= 2
    @lesson.Japanese_skill = params[:japanese_skill].to_s
    
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
  
  def lesson_params
    params.require(:lesson).permit({:time => []})
  end
 
end

