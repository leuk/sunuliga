class CreateClubs < ActiveRecord::Migration
  def self.up
    create_table :clubs do |t|
      t.string :name
      t.date :creation_date
      t.timestamps
    end
    add_index :clubs, :name, :unique => true
  end

  def self.down
    drop_table :clubs
    remove_index :clubs , :name
  end
end

