class ArticlesController < ApplicationController

  def index
    @current_branch = Willow::StaticPage.find_by_name("Articles").branch
    @articles = Article.order('date DESC')
  end
  
  def show
    @article = Article.find(params[:id])
    if request.path != article_path(@article)
      redirect_to @article, status: :moved_permanently
    end
  end

end

