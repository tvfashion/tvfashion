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

ActiveRecord::Schema.define(version: 20140426191939) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "actors", force: true do |t|
    t.string   "name"
    t.integer  "roles_id"
    t.string   "image"
    t.integer  "show_id"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "banners", force: true do |t|
    t.string   "banner_type"
    t.string   "banner_type2"
    t.integer  "season"
    t.string   "image"
    t.string   "language"
    t.integer  "show_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "banners", ["show_id"], name: "index_banners_on_show_id"

  create_table "episodes", force: true do |t|
    t.integer  "season_number"
    t.integer  "number"
    t.string   "name"
    t.text     "overview"
    t.string   "image"
    t.string   "air_date"
    t.string   "guest_stars"
    t.string   "director"
    t.string   "writer"
    t.integer  "rating"
    t.integer  "rating_count"
    t.integer  "show_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fashions", force: true do |t|
    t.boolean  "match"
    t.string   "image"
    t.string   "ad_url"
    t.integer  "outfit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fashions", ["outfit_id"], name: "index_fashions_on_outfit_id"

  create_table "outfits", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "actor_id"
    t.integer  "episode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "outfits", ["actor_id"], name: "index_outfits_on_actor_id"
  add_index "outfits", ["episode_id"], name: "index_outfits_on_episode_id"

  create_table "shows", force: true do |t|
    t.string   "name"
    t.text     "overview"
    t.string   "first_aired"
    t.string   "genres"
    t.string   "network"
    t.integer  "rating"
    t.integer  "runtime"
    t.string   "air_time"
    t.string   "imdb_id"
    t.integer  "episodes_count"
    t.integer  "actors_count"
    t.integer  "seasons_count"
    t.string   "status"
    t.string   "airs_dayofweek"
    t.integer  "rating_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
