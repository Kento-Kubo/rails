class ChangeColumnToTeacher10 < ActiveRecord::Migration
  
  def up
   change_column :teachers, :sex, :text
   
  end
  
  def down
   change_column :teachers, :sex, :string
  
  end
end
