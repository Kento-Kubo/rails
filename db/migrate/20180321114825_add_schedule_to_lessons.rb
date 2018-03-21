class AddScheduleToLessons < ActiveRecord::Migration
  def change
    add_column :Lessons, :date, :integer
    add_column :Lessons, :time, :integer
    add_column :Lessons, :condition, :integer
    add_column :Lessons, :review_rate, :integer
    add_column :Lessons, :review_comment, :integer
  end
end
