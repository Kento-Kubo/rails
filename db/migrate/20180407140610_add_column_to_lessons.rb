class AddColumnToLessons < ActiveRecord::Migration
  def change
    add_column :Lessons, :Japanese_skill, :string
    
  end
end
