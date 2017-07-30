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

ActiveRecord::Schema.define(version: 20170730130903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "category_type"
    t.string "title"
    t.date "start_date"
    t.integer "duration"
    t.time "start_hour"
    t.time "end_hour"
    t.string "location"
    t.integer "cost"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar1_file_name"
    t.string "avatar1_content_type"
    t.integer "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string "avatar2_file_name"
    t.string "avatar2_content_type"
    t.integer "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string "avatar3_file_name"
    t.string "avatar3_content_type"
    t.integer "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string "phone"
    t.integer "priority", default: 0, null: false
    t.boolean "status", default: false
    t.string "web_site"
    t.text "description"
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "lastname"
    t.string "cirif"
    t.string "phone"
    t.integer "reputation", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categories", "users"
end
