class User < ActiveRecord::Base
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    # before_save { self.email = email.downcase }

    validates :name, {presence: true ,uniqueness:true, length: { maximum: 10 }}
    # validates :skype, {presence: true }
    # validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX },length: { maximum: 255},uniqueness: { case_sensitive: false }}
    validates :email, {presence: true,length: { maximum: 255},uniqueness: { case_sensitive: false }}

    # validates :password, {presence: true }
    # validates_confirmation_of :password
  
    has_secure_password

end
