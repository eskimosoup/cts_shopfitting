module Admin
  class HomeFeaturesController < Manticore::ApplicationController
    
    edit_images_for HomeFeature, [:image]
  
    def index
      @home_features = HomeFeature.all
    end
    
    def new
      @home_feature = HomeFeature.new
    end
    
    def create
      @home_feature = HomeFeature.new(params[:home_feature])
      if @home_feature.save
        redirect_to admin_home_features_path, :notice => "Home feature successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @home_feature = HomeFeature.find(params[:id])
    end
    
    def update
      @home_feature = HomeFeature.find(params[:id])
      if @home_feature.update_attributes(params[:home_feature])
        redirect_to admin_home_features_path, :notice => "Home feature successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @home_feature = HomeFeature.find(params[:id])
      @home_feature.destroy
      redirect_to admin_home_features_path, :notice => "Home feature destroyed."
    end
    
  end
end
