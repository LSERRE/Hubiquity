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

ActiveRecord::Schema.define(version: 20150618200633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "notifications", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.string   "notification_type"
    t.boolean  "read"
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "visiter_id"
    t.string   "picture1_name"
    t.string   "picture2_name"
    t.string   "picture3_name"
    t.string   "picture4_name"
    t.string   "picture5_name"
    t.string   "picture6_name"
    t.integer  "wholesomness_rating"
    t.string   "wholesomness_comment"
    t.integer  "neighberhood_rating"
    t.string   "neighberhood_comment"
    t.integer  "brooker_rating"
    t.string   "brooker_comment"
    t.integer  "furniture_rating"
    t.string   "furniture_comment"
    t.integer  "bathrooms_rating"
    t.string   "bathrooms_comment"
    t.integer  "light_rating"
    t.string   "light_comment"
    t.integer  "noise_pollution_rating"
    t.string   "noise_pollution_comment"
    t.integer  "electricity_rating"
    t.string   "electicity_comment"
    t.string   "pipework_comment"
    t.integer  "pipework_rating"
    t.string   "issue1_title"
    t.string   "issue1_comment"
    t.string   "issue2_title"
    t.string   "issue2_comment"
    t.string   "answer1"
    t.string   "answer2"
    t.string   "answer3"
    t.string   "answer4"
    t.string   "conclusion"
    t.integer  "final_rating"
    t.integer  "review_rating"
    t.string   "review_comment"
    t.string   "picture1_file_name"
    t.string   "picture1_content_type"
    t.string   "picture2_file_name"
    t.string   "picture2_content_type"
    t.string   "picture3_file_name"
    t.string   "picture3_content_type"
    t.string   "picture4_file_name"
    t.string   "picture4_content_type"
    t.string   "picture5_file_name"
    t.string   "picture5_content_type"
    t.string   "picture6_file_name"
    t.string   "picture6_content_type"
    t.string   "issue1_picture_file_name"
    t.string   "issue1_picture_content_type"
    t.string   "issue2_picture_file_name"
    t.string   "issue2_picture_content_type"
    t.integer  "requester_id"
    t.integer  "visiter_user_id"
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
    t.float    "account_balance"
    t.string   "default_city"
    t.integer  "alert_zone"
    t.integer  "rating"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visiters", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "visit_id"
    t.date     "visitDate"
    t.time     "visitTime"
    t.string   "confirmed"
    t.integer  "requester_id"
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
