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

ActiveRecord::Schema.define(version: 20160509185347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.text     "name"
    t.text     "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_types", force: :cascade do |t|
    t.text     "type"
    t.text     "graphic_url"
    t.integer  "food_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "wine_types", ["food_id"], name: "index_wine_types_on_food_id", using: :btree

  create_table "winetypes", force: :cascade do |t|
    t.text     "typeofwine"
    t.text     "graphic_url"
    t.integer  "food_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "winetypes", ["food_id"], name: "index_winetypes_on_food_id", using: :btree

  add_foreign_key "wine_types", "foods"
  add_foreign_key "winetypes", "foods"
end
