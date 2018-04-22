class AddColumnToSchedules < ActiveRecord::Migration
  def change
    add_column:schedules, :datetime, :datetime
    add_column:schedules, :teacher_id, :integer
 
  end
end
