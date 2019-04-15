class User < ApplicationRecord
  validates :name, presence: true, length: {minimum:3, maximum:100}

  before_save {self.email = email.downcase}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  has_secue_password
  validates :password, presence:true, length: {minimum: 6}
end
