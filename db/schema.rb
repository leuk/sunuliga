# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090909052000) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.date     "creation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "club_icon_file_name"
    t.string   "club_icon_content_type"
    t.integer  "club_icon_file_size"
    t.datetime "club_icon_updated_at"
    t.integer  "teams_count",            :default => 0
  end

  add_index "clubs", ["name"], :name => "index_clubs_on_name", :unique => true

  create_table "players", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.date     "birthdate"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "player_icon_file_name"
    t.string   "player_icon_content_type"
    t.integer  "player_icon_file_size"
    t.datetime "player_icon_updated_at"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.integer  "players_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_players", :force => true do |t|
    t.string   "alias"
    t.integer  "number"
    t.date     "hiredate"
    t.integer  "team_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tp_icon_file_name"
    t.string   "tp_icon_content_type"
    t.integer  "tp_icon_file_size"
    t.datetime "tp_icon_updated_at"
  end

  create_table "teamcategories", :force => true do |t|
    t.string   "name"
    t.integer  "teams_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "club_id",                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "team_icon_file_name"
    t.string   "team_icon_content_type"
    t.integer  "team_icon_file_size"
    t.datetime "team_icon_updated_at"
    t.integer  "teamcategory_id",        :null => false
    t.integer  "team_players_count"
  end

end
