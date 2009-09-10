class TeamPlayersController < ApplicationController

# => Self's Filters
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	before_filter :load_team
	before_filter :load_positions, :only => [:new, :edit]

# => Self's Public Actions
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  def index
    @team_players = @team.team_players
  end

  def show
    @team_player = @team.team_players.find(params[:id])
  end

  def new
    @team_player = @team.team_players.build
  end

  def create
    @team_player = @team.team_players.build(params[:team_player])
    if @team_player.save
      flash[:notice] = "Successfully created team player."
      redirect_to club_team_team_player_path(@club,@team,@team_player)
    else
    	load_positions
      render :action => 'new'
    end
  end

  def edit
    @team_player = @team.team_players.find(params[:id])
  end

  def update
    @team_player = @team.team_players.find(params[:id])
    if @team_player.update_attributes(params[:team_player])
      flash[:notice] = "Successfully updated team player."
      redirect_to club_team_team_player_path(@club, @team, @team_player)
    else
    	load_positions
      render :action => 'edit'
    end
  end

  def destroy
    @team_player = @team.team_players.find(params[:id])
    @team_player.destroy
    flash[:notice] = "Successfully destroyed team player."
    redirect_to club_team_team_players_path(@club, @team)
  end
# => Self's Private Area
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	def load_team
		@club = Club.find params[:club_id]
		@team  = @club.teams.find params[:team_id]
	end

end

