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

ActiveRecord::Schema.define(version: 20161020200107) do

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.integer  "prestige"
    t.string   "location"
    t.integer  "business_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "brand_image_file_name"
    t.string   "brand_image_content_type"
    t.integer  "brand_image_file_size"
    t.datetime "brand_image_updated_at"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "market_value"
    t.integer  "brand_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "item_image_file_name"
    t.string   "item_image_content_type"
    t.integer  "item_image_file_size"
    t.datetime "item_image_updated_at"
    t.index ["brand_id"], name: "index_items_on_brand_id"
  end

  create_table "user_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_user_items_on_item_id"
    t.index ["user_id"], name: "index_user_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "status",          default: 1
    t.boolean  "admin",           default: false
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
