class UsrR2 < ActiveRecord::Migration
  def change
    remove_column:users,:birthday,:integer
    add_column:users,:birthday_year,:integer
    add_column:users,:birthday_month,:integer
    add_column:users,:birthday_day,:integer
  end
end
