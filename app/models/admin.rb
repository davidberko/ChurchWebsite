class Admin < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :role
  attr_accessor :password

  ROLES = %w[admin]

  validates_confirmation_of :password
  validates_presence_of :password, on: :create
  validates_presence_of :email
  validates_uniqueness_of :email

  before_save :encrypt_password

  def encrypt_password
  	if password.present?
  		self.password_salt = BCrypt::Engine.generate_salt
  		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  	end
  end

  def self.authenticate(email, password)
    admin = find_by_email(email)
    if admin && admin.password_hash == BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end
end
