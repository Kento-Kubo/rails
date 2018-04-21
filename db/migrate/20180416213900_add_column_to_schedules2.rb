class AddColumnToSchedules2 < ActiveRecord::Migration
  def change
    add_column:schedules, :condition, :integer
   
 
  end
end
