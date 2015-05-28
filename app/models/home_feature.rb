class HomeFeature < ActiveRecord::Base
    
  mount_uploader :image, HomeFeatureImageUploader
    
  validates :caption, :image, :presence => true
  
end
