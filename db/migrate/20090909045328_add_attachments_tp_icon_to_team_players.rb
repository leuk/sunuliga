class AddAttachmentsTpIconToTeamPlayers < ActiveRecord::Migration
  def self.up
    add_column :team_players, :tp_icon_file_name, :string
    add_column :team_players, :tp_icon_content_type, :string
    add_column :team_players, :tp_icon_file_size, :integer
    add_column :team_players, :tp_icon_updated_at, :datetime
  end

  def self.down
    remove_column :team_players, :tp_icon_file_name
    remove_column :team_players, :tp_icon_content_type
    remove_column :team_players, :tp_icon_file_size
    remove_column :team_players, :tp_icon_updated_at
  end
end
