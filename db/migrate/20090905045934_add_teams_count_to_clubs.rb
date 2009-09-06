class AddTeamsCountToClubs < ActiveRecord::Migration
  def self.up
    add_column :clubs, :teams_count, :integer , :default => 0
  end

  def self.down
    remove_column :clubs, :teams_count
  end
end

