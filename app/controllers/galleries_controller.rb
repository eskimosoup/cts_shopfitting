class GalleriesController < ApplicationController

  def index
    @current_branch = Willow::StaticPage.find_by_name("Gallery").branch
    @clients = Client.includes(:client_images).where("client_images_count > ? AND gallery_display = ?", 0, true).order(:position)
  end
  
end

