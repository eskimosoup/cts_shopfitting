class TeamMembersController < ApplicationController

  # GET /team_members
  def index
    @current_branch = Willow::StaticPage.find_by_name("Staff").branch
    @team_members = TeamMember.all
    @roles = Role.includes(:team_members).order(:position)
  end

end

