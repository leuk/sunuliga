class AddTeamPlayersCountToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :team_players_count, :integer
  end

  def self.down
    remove_column :teams, :team_players_count
  end
end
