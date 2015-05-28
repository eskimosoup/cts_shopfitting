module Admin
  class ClientImagesController < Manticore::ApplicationController
    
    edit_images_for ClientImage, [:image]
    
    before_filter {@client = Client.find(params[:client_id])}
  
    def index
      @client_images = ClientImage.where(:client_id => @client.id).order(:position)
    end
    
    def new
      @client_image = ClientImage.new(:client_id => @client.id)
    end
    
    def create
      @client_image = ClientImage.new(params[:client_image])
      if @client_image.save
        redirect_to admin_client_client_images_path(@client), :notice => "Client image successfully created."
      else
        render :action => 'new'
      end
    end

    def edit
      @client_image = ClientImage.find(params[:id])
    end
    
    def update
      @client_image = ClientImage.find(params[:id])
      if @client_image.update_attributes(params[:client_image])
        redirect_to admin_client_client_images_path(@client), :notice => "Client image successfully updated."
      else
        render :action => 'edit'
      end
    end
    
    def destroy
      @client_image = ClientImage.find(params[:id])
      @client_image.destroy
      redirect_to admin_client_client_images_path(@client), :notice => "Client image destroyed."
    end
    
  end
end
