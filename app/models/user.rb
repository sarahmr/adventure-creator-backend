class User < ApplicationRecord
  has_secure_password
  has_many :stories
  has_many :reviews

  validates :username, uniqueness: { case_sensitive: false }

  def image_hash
    image_hash = Digest::MD5.hexdigest(self.email)
  end

end