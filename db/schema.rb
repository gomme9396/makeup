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

ActiveRecord::Schema.define(version: 20170428065657) do

  create_table "conprofiles", force: :cascade do |t|
    t.string   "conp_intro"
    t.integer  "conp_mon_able"
    t.integer  "conp_mon_time"
    t.integer  "conp_tue_able"
    t.integer  "conp_tue_time"
    t.integer  "conp_wed_able"
    t.integer  "conp_wed_time"
    t.integer  "conp_thu_able"
    t.integer  "conp_thu_time"
    t.integer  "conp_fri_able"
    t.integer  "conp_fri_time"
    t.integer  "conp_sat_able"
    t.integer  "conp_sat_time"
    t.integer  "conp_sun_able"
    t.integer  "conp_sun_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "consults", force: :cascade do |t|
    t.string   "c_writer"
    t.string   "c_email"
    t.string   "c_name"
    t.integer  "c_price"
    t.string   "c_intro"
    t.string   "c_curri"
    t.integer  "c_oneday"
    t.integer  "c_group"
    t.string   "c_material"
    t.integer  "c_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cusprofiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
