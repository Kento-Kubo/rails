class ChangeColumnToLessons3 < ActiveRecord::Migration
  
  def up
   change_column :Lessons, :time, :datetime
  end
  
  def down
   change_column :Lessons, :time, :time
  end
end
