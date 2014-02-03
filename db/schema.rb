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

ActiveRecord::Schema.define(version: 20140203035152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_listings", id: false, force: true do |t|
    t.integer "listing_id",  null: false
    t.integer "category_id", null: false
  end

  create_table "listings", force: true do |t|
    t.string   "goods_type"
    t.integer  "amount"
    t.text     "description"
    t.string   "location"
    t.string   "transaction_type"
    t.integer  "cost"
    t.datetime "expiry"
    t.integer  "user_id"
    t.string   "pictures"
    t.string   "location_state"
    t.boolean  "sold"
    t.string   "sold_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email_address"
    t.string "username"
    t.string "password"
    t.string "home_location"
    t.string "home_state"
    t.string "merchant_type"
    t.string "purchases"
    t.string "avatar"
  end

end
