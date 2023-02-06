class User < ApplicationRecord
  after_destroy :ensure_an_admin_remains
  has_many :comments, dependent: :destroy
  

  validates :name, presence: true, uniqueness: true
  
  has_secure_password

  def ensure_an_admin_remains 
    if User.count == 0 
      raise Error.new "Can't delete last user"
    end
  end
end
