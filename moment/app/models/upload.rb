class Upload < ActiveRecord::Base
  include Taggable

  belongs_to :user
  has_many :favorites
  has_many :tags, through: :upload_tags
  has_many :upload_tags
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  scope :recent, -> { order("created_at DESC").limit(20) }

  def create_tags
    potential_tags = description.split(/[\s\.]/).map { |tag| tag.downcase }
    existing_tags = Tag.all.map { |tag| tag.name }
    potential_tags.each do |tag|
      if !existing_tags.include?(tag) && !not_tags.include?(tag)
        Tag.create(name: tag)
      end
      create_upload_tag(tag)
    end
  end

  def create_upload_tag(tag)
    if !not_tags.include?(tag)
      UploadTag.create(upload_id: id, tag_id: Tag.find_by_name(tag).id)
    end
  end

end
