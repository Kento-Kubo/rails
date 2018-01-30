class AddUser < ActiveRecord::Migration
  def change
    add_column:users,:country,:string
    add_column:users,:sex,:string
    add_column:users,:profile,:string
    add_column:users,:history,:integer
    add_column:users,:skype,:string
  end
end
