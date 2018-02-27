class User < ActiveRecord::Base
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :name, {presence: true ,uniqueness:true}
    validates :emails, {presence: true ,uniqueness:true, format: { with: VALID_EMAIL_REGEX }}
    validates :password, {presence: true ,uniqueness:true}
    validates_confirmation_of :password

end
