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

ActiveRecord::Schema.define(version: 20180304005927) do

  create_table "teachers", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "emails"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "country"
    t.string   "sex"
    t.string   "skype"
    t.string   "password"
    t.integer  "birthday_year"
    t.integer  "birthday_month"
    t.integer  "birthday_day"
    t.integer  "language"
    t.integer  "hobby"
  end

end
