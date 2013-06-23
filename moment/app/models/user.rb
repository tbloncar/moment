class User < ActiveRecord::Base
  has_secure_password
  has_many :uploads
  has_many :favorites

  validates :email, uniqueness: true

  def create_url_path
    return "#{f_name.downcase}-#{l_name.downcase}"
  end

  def full_name
    return "#{f_name} #{l_name}".titleize
  end
end
