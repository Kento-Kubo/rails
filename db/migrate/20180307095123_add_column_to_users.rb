class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :teacher, :boolean
    change_column :users, :sex, :boolean
  end
end
