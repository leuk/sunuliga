class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.string :name
      t.integer :players_count
      t.timestamps
    end
    add_foreign_key :players, :position_id, :positions
  end

  def self.down
    remove_foreign_key :players, :positions
    drop_table :positions
  end
end

