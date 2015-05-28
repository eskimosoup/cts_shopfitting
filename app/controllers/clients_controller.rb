class ClientsController < ApplicationController

  # GET /clients
  def index
    @current_branch = Willow::StaticPage.find_by_name("Clients").branch
    @clients = Client.order('name ASC')
  end

  # GET /clients/1
  def show
    @client = Client.find(params[:id])
  end

  
end

