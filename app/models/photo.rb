class Photo < ActiveRecord::Base
  attr_accessible :album_id, :file, :title
  mount_uploader :file, FileUploader

  belongs_to :album
end
