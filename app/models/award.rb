class Award < ActiveRecord::Base
  
  mount_uploader :image, AwardImageUploader
  
  validates :name, :image, :presence => true
end
