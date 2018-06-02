class MainController < ApplicationController

#-------------------------------------------------------------------
def index
    #ページ数取得
    @page = params[:page].to_i
       if @page == nil
        @page = 0
       end
    @page_num = 6
   
   #検索方法取得（授業可能の先生かすべての先生一覧か）
   @seaching_condition_1 = params[:seaching_condition_id].to_i
   @seaching_condition_2 = params[:seaching_condition_id_clicked_before].to_i
   if @seaching_condition==0 then
    @seaching_condition=1
   end
    if @seaching_condition_1 and @seaching_condition_2==0 then 
        @seaching_condition=1
    elsif @seaching_condition_1==0 and @seaching_condition_2
        @seaching_condition =  @seaching_condition_2
    else
         @seaching_condition =  @seaching_condition_1
    end

   #該当授業取得（ログイン後のデフォルトランディングページは今日授業できる先生）
   @date_1 = params[:date_search_id].to_s
   @date_2 = params[:date_clicked_before].to_s
    if @date_1 and @date_2.empty? 
        @date = Date.today.to_s
    elsif @date_1.empty? and @date_2
        @date = @date_2
    else
        @date = @date_1
    end
    
   
   #検索（授業可能の先生：Lessonからとってくる、すべての先生一覧：Teacherからall）
   if @seaching_condition ==1
        @lessons_td = Lesson.where(date: @date).where(condition:[2,3]).pluck(:teacher_id).uniq
   elsif @seaching_condition ==2
        @lessons_td = Teacher.all.pluck(:id).uniq
   
   end

#↓条件絞込み↓
  #性別取得
  @sex = params[:sex]#.to_s
  
  
   if @sex == "any"  || @sex == nil
    @sex=["male", "female"]
   end
 
   #時給取得
   @cost1 = params[:cost1]
    if @cost1 == "any" || @cost1 == nil
      @cost1 = 0.to_i
    end
   
   @cost2 = params[:cost2]
    if @cost2 == "any" || @cost2 == nil
      @cost2 = 100.to_i
    end 
    
   #年齢取得
   @age1 = params[:age1]
   @age2 = params[:age2]
   
    if @age1 == "any" || @age1 == nil
      @age1 = 0.to_i
    end
    
    if @age2 == "any" || @age2 == nil
      @age2 = 1000.to_i
    end 
   
   
   
   #該当先生取得
        teacher_searched=Teacher.where(sex: @sex).where("cost >= ?", @cost1).where("cost <= ?", @cost2).where("age >= ?", @age1).where("age <= ?", @age2)
    
        @teachers = []
  
   @lessons_td.each do |id|
        teachers=teacher_searched.find_by(id: id)
        @teachers << teachers
        @teachers = @teachers.compact
        
    end 


    if @teachers.empty?
    @n = 0
    else
    @n = @teachers.length.to_i
    end


  
        #並べ替え情報取得
        if @teachers.empty?
        @n = 0
        else
        @n = @teachers.length.to_i
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
       end
    
   #データベースより全生徒データ取得
    @users = User.all
    @lessons_available =Lesson.where(condition: 3)
    @lessons_reserved =Lesson.where(condition: 2)
       
end
#-------------------------------------------------------------------  
  
  def mypage_teacher
    @teacher = Teacher.find_by(id: params[:id])
        @num_rate_1 = Lesson.where(teacher_id: @teacher.id).where(review_rate:1).length
        @num_rate_2 = Lesson.where(teacher_id: @teacher.id).where(review_rate:2).length
        @num_rate_3 = Lesson.where(teacher_id: @teacher.id).where(review_rate:3).length
        @num_rate_4 = Lesson.where(teacher_id: @teacher.id).where(review_rate:4).length
        @num_rate_5 = Lesson.where(teacher_id: @teacher.id).where(review_rate:5).length
        
        if @num_rate_1+@num_rate_2+@num_rate_3+@num_rate_4+@num_rate_5 !=0 
            @total_rate = @num_rate_1+@num_rate_2+@num_rate_3+@num_rate_4+@num_rate_5
            @mean_rate = (1*@num_rate_1+2*@num_rate_2+3*@num_rate_3+4*@num_rate_4+5*@num_rate_5)/(@num_rate_1+@num_rate_2+@num_rate_3+@num_rate_4+@num_rate_5)
        else
            @mean_rate = "none"
            @total_rate = 1
        end
    
    @comment = Lesson.where(teacher_id: @teacher.id).where(condition:1).pluck(:review_rate,:review_comment,:updated_at,:user_id).uniq
    num = @comment.length
    @count = 0
    if num != 0
        (0..num-1).each do |n|
            @count += 1 if @comment[n][1]
        end
    end
    
    
    
    
    #if @user_id != []    
        #@comment_name = User.find_by(id:@user_id.last).name
    #end
    
    #if @commnet_done == [] #|| @commnet_rate == [] || @commnet_date == [] || @user_id ==[]|| @comment_name == []
     #   @review = "none"
    #else
     #   @review = [@comment_name,@comment_date.last,@comment_done.last,@comment_rate.last]
    #end
    
    
    
    Rails.logger.debug(@comment_number)
    Rails.logger.debug("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    
    
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
    

