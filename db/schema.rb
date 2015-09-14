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

ActiveRecord::Schema.define(version: 20150914182142) do

  create_table "cuisine_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "dinner_time"
    t.integer  "party_size",    default: 0
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "reso_time"
  end

  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "capacity"
    t.string   "address"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "neighbourhood"
    t.integer  "price_range",   default: 0
    t.text     "summary"
    t.datetime "open_time"
    t.datetime "close_time"
    t.string   "image"
  end

  add_index "restaurants", ["owner_id"], name: "index_restaurants_on_owner_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
