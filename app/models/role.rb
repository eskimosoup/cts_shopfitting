class Role < ActiveRecord::Base
  
  has_many :team_members
  
  attr_accessible :name, :position
  
  validates :name, :presence => true
end
