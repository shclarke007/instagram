class User < ApplicationRecord
  attr_accessor :email, :password, :password_confirmation
  before_save :encrypt_password
  
  validates :email, presence: true, uniqueness: true
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt if password.present?
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt) if password.present? 
  end
end
