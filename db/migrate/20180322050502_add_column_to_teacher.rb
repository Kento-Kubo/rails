class AddColumnToTeacher < ActiveRecord::Migration
  def change
     add_column :teachers, :teacher, :boolean
  end
end
