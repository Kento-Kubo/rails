class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :emails
    
      

      t.timestamps null: false
    end
  end
end
