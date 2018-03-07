class AddAndRemoveBirthdayColumnsToUsers < ActiveRecord::Migration
  def change
        add_column :users, :birthday, :date
        remove_column :users, :birthday_day
        remove_column :users, :birthday_year
        remove_column :users, :birthday_month

  end
end
