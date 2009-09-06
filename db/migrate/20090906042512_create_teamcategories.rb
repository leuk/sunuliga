class CreateTeamcategories < ActiveRecord::Migration
  def self.up
    create_table :teamcategories do |t|
      t.string :name
      t.integer :teams_count
      t.timestamps
    end
    add_column :teams , :teamcategory_id, :integer, :null => false
    add_foreign_key :teams, :teamcategory_id, :teamcategories
  end

  def self.down
  	remove_foreign_key :teams, :teamcategories
  	remove_column :teams , :teamcategory_id
    drop_table :teamcategories
  end
end

