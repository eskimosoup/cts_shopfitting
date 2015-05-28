module Admin
  class RolesController < Manticore::ApplicationController
  
    def index
      @roles = Role.all
    end
    
    def new
      @role = Role.new
    end
    
    def create
      @role = Role.new(params[:role])
      if @role.save
        redirect_to admin_roles_path, :notice => "Role successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @role = Role.find(params[:id])
    end
    
    def update
      @role = Role.find(params[:id])
      if @role.update_attributes(params[:role])
        redirect_to admin_roles_path, :notice => "Role successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @role = Role.find(params[:id])
      @role.destroy
      redirect_to admin_roles_path, :notice => "Role destroyed."
    end
    
  end
end
