class User < ApplicationRecord
  attr_accessor :password, :password_confirmation
  before_save :encrypt_password
  
  validates :email, presence: true, uniqueness: true
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt if password.present?
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt) if password.present? 
  end
end
