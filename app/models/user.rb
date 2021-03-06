class User < ActiveRecord::Base
  has_secure_password

  has_many :likes
  has_many :comments
  has_many :reviews

  def admin?
    self.role == 'admin'
  end
  
end
