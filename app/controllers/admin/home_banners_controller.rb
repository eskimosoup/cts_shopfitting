module Admin
  class HomeBannersController < Manticore::ApplicationController
    
    edit_images_for HomeBanner, [:image]
  
    def index
      @home_banners = HomeBanner.all
    end
    
    def new
      @home_banner = HomeBanner.new
    end
    
    def create
      @home_banner = HomeBanner.new(params[:home_banner])
      if @home_banner.save
        redirect_to admin_home_banners_path, :notice => "Home banner successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @home_banner = HomeBanner.find(params[:id])
    end
    
    def update
      @home_banner = HomeBanner.find(params[:id])
      if @home_banner.update_attributes(params[:home_banner])
        redirect_to admin_home_banners_path, :notice => "Home banner successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @home_banner = HomeBanner.find(params[:id])
      @home_banner.destroy
      redirect_to admin_home_banners_path, :notice => "Home banner destroyed."
    end
    
  end
end
