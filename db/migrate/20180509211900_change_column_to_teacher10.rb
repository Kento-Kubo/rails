class ChangeColumnToTeacher10 < ActiveRecord::Migration
  
  def up
   change_column :teachers, :sex, :string
   
  end
  
  def down
   change_column :teachers, :sex, :boolean
  
  end
end
