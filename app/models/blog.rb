class Blog < ActiveRecord::Base
  attr_accessible :content, :cover, :slug, :title, :user_id
  mount_uploader :cover, CoverUploader

  belongs_to :user
end
