module Admin
  class ClientsController < Manticore::ApplicationController
    
    edit_images_for Client, [:logo]
  
    def index
      if params[:search]
        @clients = Client.where("name LIKE ?", "%#{params[:search]}%")
      else
        @clients = Client.order('name ASC')
      end
    end
    
    def new
      @client = Client.new
    end
    
    def create
      @client = Client.new(params[:client])
      if @client.save
        redirect_to admin_clients_path, :notice => "Client successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @client = Client.find(params[:id])
    end
    
    def update
      @client = Client.find(params[:id])
      if @client.update_attributes(params[:client])
        redirect_to admin_clients_path, :notice => "Client successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @client = Client.find(params[:id])
      @client.destroy
      redirect_to admin_clients_path, :notice => "Client destroyed."
    end
    
  end
end
