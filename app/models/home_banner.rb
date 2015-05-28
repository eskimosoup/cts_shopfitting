class HomeBanner < ActiveRecord::Base
    
  mount_uploader :image, HomeBannerImageUploader
    
  validates :caption, :image, :presence => true
  
end
