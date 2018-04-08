class Favorite < ActiveRecord::Base

 validates :user_id, {presence: true }
 validates :teacher_id, {presence: true }
 
end
