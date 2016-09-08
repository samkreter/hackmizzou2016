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

ActiveRecord::Schema.define(version: 20160908232503) do

  create_table "hackers", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "school",              limit: 255
    t.string   "email",               limit: 255
    t.string   "resume_file_name",    limit: 255
    t.string   "resume_content_type", limit: 255
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "interest",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "email",               limit: 255
    t.string   "affil",               limit: 255
    t.string   "hear",                limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "resume_file_name",    limit: 255
    t.string   "resume_content_type", limit: 255
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "github"
    t.string   "foodres"
    t.string   "major"
  end

  create_table "templates", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
