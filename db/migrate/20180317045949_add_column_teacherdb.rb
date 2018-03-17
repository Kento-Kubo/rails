class AddColumnTeacherdb < ActiveRecord::Migration
  def change
    add_column:teachers, :birthday, :date
    add_column:teachers, :email, :string
    add_column:teachers,:country,:string
    add_column:teachers,:sex,:string
    add_column:teachers,:skype,:string
  end
end
