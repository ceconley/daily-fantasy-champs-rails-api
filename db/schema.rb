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

ActiveRecord::Schema.define(version: 2019_01_14_200859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_name", "last_name"], name: "index_actors_on_first_name_and_last_name", unique: true
  end

  create_table "appearances", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_appearances_on_actor_id"
    t.index ["movie_id"], name: "index_appearances_on_movie_id"
  end

  create_table "contests", force: :cascade do |t|
    t.string "name"
    t.integer "entrants_total"
    t.integer "entrants_current"
    t.string "winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lineup_id"
    t.bigint "contest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_id"], name: "index_entries_on_contest_id"
    t.index ["lineup_id"], name: "index_entries_on_lineup_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "lineups", force: :cascade do |t|
    t.string "qb"
    t.string "rb1"
    t.string "rb2"
    t.string "wr1"
    t.string "wr2"
    t.string "wr3"
    t.string "te"
    t.string "flex"
    t.string "dst"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.date "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "appearances", "actors"
  add_foreign_key "appearances", "movies"
  add_foreign_key "entries", "contests"
  add_foreign_key "entries", "lineups"
  add_foreign_key "entries", "users"
  add_foreign_key "examples", "users"
end
