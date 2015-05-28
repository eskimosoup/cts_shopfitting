class AwardsController < ApplicationController

  # GET /awards
  def index
    @current_branch = Willow::StaticPage.find_by_name("Awards").branch
    @awards = Award.where(:display => true).order(:position)
  end

end

