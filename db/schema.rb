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

ActiveRecord::Schema.define(version: 20151207094245) do

  create_table "course_holes", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "number"
    t.integer  "par"
    t.integer  "distance"
    t.integer  "rating"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_holes", ["course_id"], name: "index_course_holes_on_course_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "par"
    t.float    "rating"
    t.integer  "holes"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "round_holes", force: :cascade do |t|
    t.integer  "round_id"
    t.integer  "course_id"
    t.integer  "number"
    t.integer  "score"
    t.integer  "strokes"
    t.integer  "putts"
    t.text     "notes"
    t.integer  "course_hole_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "round_holes", ["course_hole_id"], name: "index_round_holes_on_course_hole_id"

  create_table "rounds", force: :cascade do |t|
    t.boolean  "private"
    t.integer  "course_id"
    t.integer  "holes"
    t.integer  "score"
    t.integer  "best"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rounds", ["course_id"], name: "index_rounds_on_course_id"
  add_index "rounds", ["user_id"], name: "index_rounds_on_user_id"

  create_table "tees", force: :cascade do |t|
    t.integer  "course_hole_id"
    t.integer  "pro"
    t.integer  "mens"
    t.integer  "womens"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tees", ["course_hole_id"], name: "index_tees_on_course_hole_id"

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
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "views", force: :cascade do |t|
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

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

end
