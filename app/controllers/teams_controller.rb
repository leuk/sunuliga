class TeamsController < ApplicationController

# Filters Applied To Self
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	before_filter :load_club
	before_filter :load_categories, :only => [:new, :edit]

# Self's public methods
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  def index
    @teams = @club.teams.all
  end

  def show
    @team = @club.teams.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = @club.teams.build(params[:team])
    if @team.save
      flash[:notice] = "Successfully created team."
      redirect_to club_team_path(@club, @team)
    else
    	load_categories
      redirect_to new_club_team_path(@club)
    end
  end

  def edit
    @team = @club.teams.find(params[:id])
  end

  def update
    @team = @club.teams.find(params[:id])
    if @team.update_attributes(params[:team])
      flash[:notice] = "Successfully updated team."
      redirect_to club_team_path(@club, @team)
    else
    	load_categories
      render edit_club_team_path(@club, @team)
    end
  end

  def destroy
    @team = @club.teams.find(params[:id])
    @team.destroy
    flash[:notice] = "Successfully destroyed team."
    redirect_to club_teams_path(@club)
  end


# Private Area
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	def load_club
		@club = Club.find(params[:club_id])
	end
	def load_categories
		@categories = Teamcategory.all
	end
end

