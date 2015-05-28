class ApplicationController < ActionController::Base

  before_filter :set_seo_variables

  def sitemap
    @seo_entries = SeoEntry.where(:in_sitemap => true).order(:nominal_url)

    respond_to do |format|
      format.html
      format.xml
    end
  end

  def set_seo_variables
    seo_entry = SeoEntry.find_by_nominal_url(request.path)
    if seo_entry
      @title = seo_entry.title
      @meta_description = seo_entry.meta_description
      @meta_tags = seo_entry.title
    else
      @meta_description = SITE_SETTINGS['Default Meta Description']
      @meta_tags = SITE_SETTINGS['Default Meta Tags']
    end
  end

  protect_from_forgery
  
  before_filter {@footer_awards = Award.where(:display_footer => true).order(:position)}
  
  def index
    @current_branch = Willow::StaticPage.find_by_name("Home").branch
    @client_images = ClientImage.where(:display => true, :display_home => true).order("RAND()").limit(12)
    @banners = HomeBanner.where(:display => true).order(:position)
    @features = HomeFeature.where(:display => true).order(:position).limit(2)
    @article = Article.where("display_home = ? and date <= ?", true, Date.today ).order('date desc').first
    @home_page = HomePage.where(:display => true)
  end
  
  def services
    @current_branch = Willow::StaticPage.find_by_name("Services").branch
  end
  
  def about
    @current_branch = Willow::StaticPage.find_by_name("About Us").branch
  end
  
end
