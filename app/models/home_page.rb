class HomePage < ActiveRecord::Base
    
  mount_uploader :image, HomePageImageUploader
    
  validates :name, :content, :image, :presence => true
  
end
