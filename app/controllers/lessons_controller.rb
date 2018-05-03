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
    @lesson.condition= 3
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
    @lesson.user_id= current_user.id
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
  lesson.condition = 3
  lesson.user_id = nil
  lesson.Japanese_skill = nil
  lesson.save
  
  redirect_to("/main/mypage_student")
  
  end
  
  def review
    @lesson = Lesson.find_by(id: params[:id])
    @teacher = Teacher.find_by(id: @lesson.teacher_id)
    @count_done =Lesson.where(user_id: current_user.id ).where(condition:1).where(teacher_id: @teacher.id).length
    
  end
  
  def review_write
    @lesson = Lesson.find_by(id: params[:id])
    
    @lesson.review_comment = params[:review_comment].to_s
    @lesson.review_rate = params[:review_rate].to_i
  
    
    @lesson.save
    
    teacher = Teacher.find_by(id: @lesson.teacher_id)
    lesson_teachers = Lesson.where(teacher_id: teacher.id).where(condition: 1)
    count_lesson= Lesson.where(teacher_id: teacher.id).where(condition: 1).length
    
    teacher_rate_sum = 0
    
   lesson_teachers[0..count_lesson].each do |lesson_teacher|
    
    teacher_rate_sum = teacher_rate_sum.to_f + lesson_teacher.review_rate.to_f
        
   end
   
   teacher.rate = (teacher_rate_sum / count_lesson).to_f
  
   teacher.num = count_lesson  
   teacher.save
    
    redirect_to("/main/mypage_student")
    
  end
  
  def review_show
    @lessons = Lesson.where(teacher_id: params[:id]).where(condition: 1)
    @lessons_count = Lesson.where(teacher_id: params[:id]).where(condition: 1).length
  end
  
  
  def lesson_params
    params.require(:lesson).permit({:time => []})
  end
 
end

