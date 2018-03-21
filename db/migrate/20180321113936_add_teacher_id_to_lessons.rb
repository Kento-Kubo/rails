class AddTeacherIdToLessons < ActiveRecord::Migration
  def change
        rename_column :Lessons, :student_id, :user_id
        change_column :Lessons, :user_id, :integer
        add_column :Lessons, :teacher_id, :integer
  
  end
end
