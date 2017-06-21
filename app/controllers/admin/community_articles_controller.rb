module Admin
  class CommunityArticlesController < Manticore::ApplicationController
  
    def index
      @community_articles = CommunityArticle.all
    end
    
    def new
      @community_article = CommunityArticle.new
    end
    
    def create
      @community_article = CommunityArticle.new(params[:community_article])
      if @community_article.save
        redirect_to admin_community_articles_path, :notice => "Community article successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @community_article = CommunityArticle.find(params[:id])
    end
    
    def update
      @community_article = CommunityArticle.find(params[:id])
      if @community_article.update_attributes(params[:community_article])
        redirect_to admin_community_articles_path, :notice => "Community article successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @community_article = CommunityArticle.find(params[:id])
      @community_article.destroy
      redirect_to admin_community_articles_path, :notice => "Community article destroyed."
    end
    
  end
end
