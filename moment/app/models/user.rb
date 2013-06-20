class User < ActiveRecord::Base
  has_many :uploads
  has_many :favorites
end
