class AddColumnToTeacher5 < ActiveRecord::Migration
  def change
    add_column:teachers, :rate, :decimal, precision: 3, scale: 2
   
 
  end
end
