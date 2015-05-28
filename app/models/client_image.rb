class ClientImage < ActiveRecord::Base
  
  mount_uploader :image, ClientImageUploader
  
  belongs_to :client, :counter_cache => true
  
  validates :name, :image, :presence => true
end
