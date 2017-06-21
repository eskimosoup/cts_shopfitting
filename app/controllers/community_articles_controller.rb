class CommunityArticlesController < ApplicationController

  def index
    @current_branch = static_page.branch if static_page
    @community_articles = CommunityArticle.order('date DESC')
  end

  def show
    @community_article = CommunityArticle.find(params[:id])
    if request.path != community_article_path(@community_article)
      redirect_to @community_article, status: :moved_permanently
    end
  end

  private

  def static_page
    Willow::StaticPage.find_by_name("Community Articles")
  end
end
