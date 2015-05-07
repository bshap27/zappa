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

ActiveRecord::Schema.define(version: 20150505194119) do

  create_table "band_events", force: :cascade do |t|
    t.integer  "band_id"
    t.integer  "event_id"
    t.boolean  "confirmed"
    t.time     "load_time"
    t.time     "doors_time"
    t.time     "show_time"
    t.time     "set_time"
    t.integer  "tour_id"
    t.boolean  "food_comp"
    t.boolean  "drink_comp"
    t.boolean  "hotel_comp"
    t.float    "flat_rate"
    t.boolean  "door_deal"
    t.string   "door_deal_details"
    t.integer  "stay_id"
    t.string   "event_notes"
    t.float    "merch_total"
    t.float    "tips_total"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "band_members", force: :cascade do |t|
    t.integer  "band_id"
    t.integer  "user_id"
    t.boolean  "performer"
    t.boolean  "management"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "band_practice_locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "band_id"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "band_practices", force: :cascade do |t|
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "band_practice_location_id"
    t.integer  "band_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "bands", force: :cascade do |t|
    t.string   "band_name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "venue_id"
    t.date     "date"
    t.integer  "age_min"
    t.float    "ticket_price_adv"
    t.float    "ticket_price_dos"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "personal_events", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "recurring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stays", force: :cascade do |t|
    t.integer  "band_id"
    t.integer  "event_id"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.boolean  "pets"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tours", force: :cascade do |t|
    t.string   "color"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
    t.string   "uid"
    t.string   "provider"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.boolean  "bring_pa"
    t.string   "mailing_address_street"
    t.string   "mailing_address_city"
    t.string   "mailing_address_state"
    t.integer  "mailing_address_zip"
    t.integer  "num_posters"
    t.string   "dos_contact"
    t.string   "venue_notes"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
