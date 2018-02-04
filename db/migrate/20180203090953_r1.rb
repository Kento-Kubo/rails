class R1 < ActiveRecord::Migration
  def change  
    remove_column:users,:history,:integer
    add_column:users,:password,:string
  end
end
