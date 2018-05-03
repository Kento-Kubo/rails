class ChangeColumnToLesson4 < ActiveRecord::Migration
  
  def up
   change_column :Lessons, :review_comment, :string
   
  end
  
  def down
   change_column :Lessons, :review_comment, :integer
  
  end
end
