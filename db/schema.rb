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

ActiveRecord::Schema.define(version: 20150616152650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "bio"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "telephone"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "level"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visiters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "visit_id"
    t.date     "visitDate"
    t.time     "visitTime"
    t.string   "confirmed"
  end

  create_table "visits", force: :cascade do |t|
    t.string   "adress"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "country"
    t.integer  "surface"
    t.string   "agentName"
    t.string   "agencyName"
    t.boolean  "wholesomness"
    t.integer  "wholesomnessRate"
    t.boolean  "neighberhood"
    t.integer  "neighberhoodRate"
    t.boolean  "broker"
    t.integer  "brokerRate"
    t.boolean  "furniture"
    t.string   "furnitureRate"
    t.boolean  "light"
    t.integer  "lightRate"
    t.boolean  "calm"
    t.integer  "calmRate"
    t.boolean  "electricty"
    t.integer  "electricityRate"
    t.boolean  "windowGlazing"
    t.boolean  "pipework"
    t.integer  "pipeworkRate"
    t.string   "question1"
    t.string   "question2"
    t.string   "question3"
    t.string   "question4"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "telephone"
    t.integer  "bathroomsRate"
    t.integer  "windowGlazingRate"
    t.date     "visitDate1"
    t.time     "visitTime1"
    t.time     "visitTime2"
    t.date     "visitDate2"
    t.date     "visitDate3"
    t.time     "visitTime3"
    t.integer  "user_id"
  end

end
