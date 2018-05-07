class MainController < ApplicationController

#-------------------------------------------------------------------
def index
    #ページ数取得
    @page = params[:page].to_i
       if @page == nil
        @page = 0
       end
    @page_num = 6
     
   #該当授業取得（ログイン後のデフォルトランディングページは今日授業できる先生）  
   @teachers = []
   @date = params[:date_search_id].to_s
   
    if @date.empty?
        @date = Date.today.to_s
    end
   #td = Date.today.midnight.to_s
   #tmr = Date.today.end_of_day.to_s
   
  
   
   @lessons_td = Lesson.where(date: @date).where(condition:[2,3]).pluck(:teacher_id).uniq
    
   @n = @lessons_td.length.to_i
        teacher_id=[]
   @lessons_td.each do |id|
        teacher_id << id
        teachers=Teacher.find_by(id: id)
        @teachers << teachers
    end 
    
   Rails.logger.debug("ayayayayyayayayayyayayayyayayayayayyayayaya")
   Rails.logger.debug(@teachers)
   Rails.logger.debug(@teachers.nil?)
   
        #並べ替え情報取得
        @order = params[:order].to_i
          if @order == nil
              @order = 0
          end
    
         if @order == 1
             @teachers.sort! do |a, b|
               (a[:cost] <=> b[:cost]).nonzero? || (b[:rate] <=> a[:rate])
             end
        
         elsif @order ==2
            @teachers.sort! do |a, b|
                (b[:cost] <=> a[:cost]).nonzero? || (b[:rate] <=> a[:rate])
            end
        
         elsif @order ==3
            @teachers.sort! do |a, b|
                (a[:id] <=> b[:id])
            end
        
         elsif @order ==0
            @teachers.sort! do |a, b|
                (b[:rate] <=> a[:rate])
            end
         end
       
      
    
   
    
   #データベースより全生徒データ取得
    @users = User.all
    @lessons_available =Lesson.where(condition: 3)
    @lessons_reserved =Lesson.where(condition: 2)
       
end
#-------------------------------------------------------------------  
  
  def mypage_teacher
    
  end
  
  def mypage_student
    @user = User.find_by(id:session[:user_id])
    @lessons_reserved =Lesson.where(user_id: @user.id).where(condition:2)
    @lessons_done =Lesson.where(user_id: @user.id).where(condition:1)
    @count_reserved = Lesson.where(user_id: @user.id).where(condition:2).length
    @count_done = Lesson.where(user_id: @user.id).where(condition:1).length
    @teachers = Teacher.all
    @favorites =Favorite.where(user_id:  @user.id)
    @count_favorite = Favorite.where(user_id: @user.id).length
    
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

 def destroy
  
  end
    

