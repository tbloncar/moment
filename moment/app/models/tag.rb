class Tag < ActiveRecord::Base
  has_many :uploads, through: :upload_tags
  has_many :upload_tags
end
