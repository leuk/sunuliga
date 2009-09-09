class CreateTeamPlayers < ActiveRecord::Migration
  def self.up
    create_table :team_players do |t|
      t.string :alias
      t.integer :number
      t.date :hiredate
      t.integer :team_id
      t.integer :position_id
      t.timestamps
    end
    add_foreign_key :team_players, :team_id, :teams
    add_foreign_key :team_players, :position_id, :positions
  end

  def self.down
    remove_foreign_key :team_players, :teams
    remove_foreign_key :team_players, :positions
    drop_table :team_players
  end
end

