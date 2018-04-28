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

ActiveRecord::Schema.define(version: 20180428125000) do

  create_table "Lessons", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "teacher_id"
    t.date     "date"
    t.datetime "time"
    t.integer  "condition"
    t.integer  "review_rate"
    t.string   "review_comment"
    t.string   "Japanese_skill"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "datetime"
    t.integer  "teacher_id"
    t.integer  "condition"
  end

  create_table "teachers", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.date     "birthday"
    t.string   "email"
    t.boolean  "sex"
    t.string   "skype"
    t.string   "password_digest"
    t.string   "hobby"
    t.string   "language"
    t.string   "profile"
    t.boolean  "teacher"
    t.integer  "cost"
    t.decimal  "rate",            precision: 3, scale: 2
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "country"
    t.boolean  "sex"
    t.string   "skype"
    t.string   "password_digest"
    t.integer  "language"
    t.integer  "hobby"
    t.boolean  "teacher"
    t.date     "birthday"
  end

end
