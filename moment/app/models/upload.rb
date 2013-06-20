class Upload < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :tags, through: :upload_tags
  has_many :upload_tags
end
