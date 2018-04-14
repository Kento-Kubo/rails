class Teachers < ActiveRecord::Migration
  def change
    change_column :teachers, :sex, :boolean
  end
end
