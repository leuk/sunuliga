class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.references :club , :null => false
      t.timestamps
    end
    add_foreign_key :teams, :club_id, :clubs
  end

  def self.down
    remove_foreign_key :teams, :clubs
    drop_table :teams
  end
end

