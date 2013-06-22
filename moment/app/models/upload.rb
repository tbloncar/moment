class Upload < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :tags, through: :upload_tags
  has_many :upload_tags
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
