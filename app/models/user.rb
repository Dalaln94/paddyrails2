
class User < ActiveRecord::Base
before_create :confirmation_token

  has_secure_password
  has_many :bookings
  has_many :posts
  has_many :reviews
  has_one :role, :through => :role_user
  has_one :role_user

  def admin?
    self.role.title == "admin"
  end

  def user?
    self.role.title == "user"
  end
  
def confirmation_token
      if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
      end
    end
end
