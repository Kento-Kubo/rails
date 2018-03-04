class AddHobbyLanguage < ActiveRecord::Migration
  def change
    add_column:users,:language,:integer
    add_column:users,:hobby,:integer
  end
end
