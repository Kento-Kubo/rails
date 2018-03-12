class MainController < ApplicationController

  def index

  end
   def mypage_student
   end
   def logout
   end
   def student_profile_edit

   end  
   def student_profile_edit_confirm

   end
   def teacher_profile_edit
   end
   def teacher_profile_edit_confirm
   end
   def teacher_account_edit
   end
   def teacher_account_edit_confirm
   end
   def student_account_edit
   end
   def student_account_edit_confirm
   end
   def teacher_faq
   end

   def student_faq
   end
    def student_write_review
   end   
   def student_write_review_confirm
   end   


end


  def mypage_student
  end
  def logout
  end
  def student_profile_edit
  end  
  def teacher_profile_edit
  end
  def teacher_account_edit
    @user=find_by[id: params[:id]]
  end
  def student_account_edit
  end
  def teacher_faq
  end
  def student_faq
  end
 end

      def index
      end

      before_action :authenticate_user
      
       def index
       end

       def mypage_student
       end
       def logout
       end
       #def student_profile_edit
       #end  
       #def student_profile_edit_confirm
       #end
       #def teacher_profile_edit
       #end
       #def teacher_profile_edit_confirm
       #end
       #def teacher_account_edit
       #end
       #def teacher_account_edit_confirm
       #end
       def student_account_edit
        @user = User.find_by(id:session[:user_id])
       end
       def student_account_edit_confirm
       end
       #def teacher_faq
       #end
    
       def student_faq
       end
       #def student_write_review
       #end   
       #def student_write_review_confirm
       #end   

       def student_profile_edit
       end  
       #def teacher_profile_edit
       #end
       #def teacher_account_edit
         #@user=find_by[id: params[:id]]
       #end
       def student_account_edit
       end
       #def teacher_faq
       #end
       def student_faq
       end
      end
     
    

