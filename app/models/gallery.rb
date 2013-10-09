class Gallery < ActiveRecord::Base
  attr_accessible :country, :description, :picture, :title, :user_id
  mount_uploader :picture, PictureUploader
end
