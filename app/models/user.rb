class User < ActiveRecord::Base
    
    validates :name, {presence: true ,uniqueness:true}
    validates :emails, {presence: true ,uniqueness:true}
    validates :password, {presence: true }
    validates :skype, {presence: true }
    
end
