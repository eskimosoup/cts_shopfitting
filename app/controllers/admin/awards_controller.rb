module Admin
  class AwardsController < Manticore::ApplicationController
    
    edit_images_for Award, [:image]
  
    def index
      @awards = Award.order(:position)
    end
    
    def new
      @award = Award.new
    end
    
    def create
      @award = Award.new(params[:award])
      if @award.save
        redirect_to admin_awards_path, :notice => "Award successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @award = Award.find(params[:id])
    end
    
    def update
      @award = Award.find(params[:id])
      if @award.update_attributes(params[:award])
        redirect_to admin_awards_path, :notice => "Award successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @award = Award.find(params[:id])
      @award.destroy
      redirect_to admin_awards_path, :notice => "Award destroyed."
    end
    
  end
end
