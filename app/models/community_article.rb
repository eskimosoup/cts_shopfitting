class CommunityArticle < ActiveRecord::Base
  mount_uploader :image, ArticleImageUploader

  validates :title, :date, :summary, :content, :presence => true

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
end
