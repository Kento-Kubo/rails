class ChangeColumnToLesson2 < ActiveRecord::Migration
  
  def up
   change_column :Lessons, :Japanese_skill, :string
   
  end
  
  def down
   change_column :Lessons, :Japanese_skill, :text
  
  end
end
