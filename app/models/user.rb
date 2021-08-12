class User < ApplicationRecord 
  before_save { self.email = email.downcase.delete(' /\\=#$!') }
  validates :name, presence: true, length: {maximum:40}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  
  validates :password_digest, presence: true, length: { minimum: 6 }
  has_many :microposts
  has_secure_password
end
