class TeamMember < ActiveRecord::Base
  
  belongs_to :role
  
  mount_uploader :image, TeamMemberImageUploader
  
  validates :name, :image, :presence => true
  
  #attr_accessible :image, :name, :role_id
end
