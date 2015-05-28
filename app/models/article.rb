class Article < ActiveRecord::Base
  
  mount_uploader :image, ArticleImageUploader
  
  validates :title, :date, :summary, :content, :presence => true
  
  extend FriendlyId
    friendly_id :title, use: [:slugged, :history]
  
  #def should_generate_new_friendly_id?
  #  new_record?
  #end
  
end
