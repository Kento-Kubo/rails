class AddColumnTeacherr2 < ActiveRecord::Migration
  def change
  remove_column:teachers,:country,:string
  add_column:teachers,:hobby,:string
  add_column:teachers,:language,:string
  add_column:teachers,:profile,:string
  end
end
