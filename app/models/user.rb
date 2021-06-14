class User < ActiveRecord::Base
    has_many :countries
    has_secure_password
    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true
    
end
