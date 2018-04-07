class ChangeColumnToLessons < ActiveRecord::Migration
  
  def up
   change_column :Lessons, :Japanese_skill, :text
   
  end
  
  def down
   change_column :Lessons, :Japanese_skill, :string
  
  end
end
