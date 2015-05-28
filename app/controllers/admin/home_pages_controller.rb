module Admin
  class HomePagesController < Manticore::ApplicationController
    
    edit_images_for HomeFeature, [:image]
  
    def index
      @home_pages = HomePage.all
    end
    
    def new
      @home_page = HomePage.new
    end
    
    def create
      @home_page = HomePage.new(params[:home_page])
      if @home_page.save
        redirect_to admin_home_pages_path, :notice => "Home page successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @home_page = HomePage.find(params[:id])
    end
    
    def update
      @home_page = HomePage.find(params[:id])
      if @home_page.update_attributes(params[:home_page])
        redirect_to admin_home_pages_path, :notice => "Home page successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @home_page = HomePage.find(params[:id])
      @home_page.destroy
      redirect_to admin_home_pages_path, :notice => "Home page destroyed."
    end
    
  end
end
