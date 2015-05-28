class PagesController < ApplicationController

  def show
    @page = Page.where(:display => true).find(params[:id])
    @current_branch = @page.branch if @page.branch
    render :layout => @page.layout
  end

end
