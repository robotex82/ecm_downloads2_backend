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

ActiveRecord::Schema.define(version: 20151130141606) do

  create_table "ecm_downloads_download_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "locale"
    t.integer  "position"
    t.integer  "ecm_downloads_downloads_count", default: 0, null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ecm_downloads_downloads", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "published_at"
    t.integer  "ecm_downloads_download_category_id"
    t.integer  "position"
    t.string   "slug"
    t.string   "asset_file_name"
    t.integer  "asset_file_size"
    t.string   "asset_content_type"
    t.datetime "asset_updated_at"
    t.string   "asset_fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ecm_downloads_downloads", ["ecm_downloads_download_category_id"], name: "index_ecm_downloads_downloads_on_download_category_id"

end
