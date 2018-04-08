class AddColumnToTeacher3 < ActiveRecord::Migration
  def change
    add_column:teachers, :cost, :integer
    
  end
end
