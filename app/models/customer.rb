require 'digest/sha2'

class Customer < ActiveRecord::Base
  default_scope :order => 'name'
  #set_primary_key :email
  belongs_to :fastpass
  
  validates :email, :presence => true, :uniqueness => true
 
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader   :password

  validate  :password_must_be_present
  
  class << self
    def authenticate(email, password)
      if customer = find_by_email(email)
        if customer.hashed_password == encrypt_password(password, customer.salt)
          customer
        end
      end
    end

    def encrypt_password(password, salt)
      Digest::SHA2.hexdigest(password + "turtle" + salt)
    end
  end
  
  # 'password' is a virtual attribute
  def password=(password)
    @password = password

    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end
  
  private

    def password_must_be_present
      errors.add(:password, "Missing password") unless hashed_password.present?
    end
  
    def generate_salt
      self.salt = self.object_id.to_s + rand.to_s
    end
end
