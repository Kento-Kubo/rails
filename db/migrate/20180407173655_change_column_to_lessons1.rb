class ChangeColumnToLessons1 < ActiveRecord::Migration
  
  def up
   change_column :Lessons, :time, :time
   change_column :Lessons, :date, :date  
  end
  
  def down
   change_column :Lessons, :time, :integer
   change_column :Lessons, :date, :integer 
  end
end
