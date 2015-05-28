class CaseStudy < ActiveRecord::Base
  
  belongs_to :client
  
  validates :content, :presence => true
end
