# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150610221800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "double_stats", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "double_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doubles", force: :cascade do |t|
    t.string   "teamA_id"
    t.string   "teamB_id"
    t.integer  "teamwinner_id"
    t.integer  "teamloser_id"
    t.integer  "teamwinner_score"
    t.integer  "teamloser_score"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "doubles_stats", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "double_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doublesstats", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "double_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_teams", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "photo_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remove_typoed_tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "singles", force: :cascade do |t|
    t.string   "playerA_name"
    t.string   "playerB_name"
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.integer  "winner_score"
    t.integer  "loser_score"
    t.integer  "playerA_score"
    t.integer  "playerB_score"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "singles_stats", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "single_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "teammember1"
    t.string   "teammember2"
    t.string   "team_players"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
