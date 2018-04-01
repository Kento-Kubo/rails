class LessonsController < ApplicationController
 

  def index
  end
  
  def new

    @teacher = Teacher.find_by(id: params[:id])
    @lesson=Lesson.new
    @lesson.time = params[:time]
  end
  
  def create  #make a new reservation

    @lesson = Lesson.new(time: params[:time])
    @lesson.save
   
  end
  
  def update
  
  end

end

