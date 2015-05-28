class Client < ActiveRecord::Base
  
  mount_uploader :logo, ClientLogoImageUploader
  
  has_many :case_studies
  has_many :client_images, :conditions => {:display => true}, :order => :position
  
  validates :name, :logo, :presence => true
  
end
