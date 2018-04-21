class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :date
      t.string :date

      t.timestamps null: false
    end
  end
end
