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

ActiveRecord::Schema.define(version: 20160613141456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "link_langs", force: :cascade do |t|
    t.string   "link"
    t.string   "lang"
    t.string   "types"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.text     "author"
    t.text     "title"
    t.text     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "readings", force: :cascade do |t|
    t.text     "author"
    t.text     "title"
    t.datetime "create_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "self_intros", force: :cascade do |t|
    t.string   "name"
    t.string   "university"
    t.string   "email"
    t.string   "phone"
    t.string   "intro"
    t.string   "lang"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "uid"
    t.string   "s1"
    t.string   "s2"
    t.string   "s3"
    t.string   "s4a"
    t.string   "s4b"
    t.string   "s4c"
    t.string   "s5a"
    t.string   "s5b"
    t.string   "s5c"
    t.string   "s6a"
    t.string   "s6b"
    t.string   "s6c"
    t.string   "s7a"
    t.string   "s7b"
    t.string   "s7c"
    t.string   "s8a"
    t.string   "s8b"
    t.string   "s8c"
    t.string   "s9"
    t.string   "s10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_infos", force: :cascade do |t|
    t.integer  "work_id"
    t.string   "name"
    t.string   "link"
    t.string   "description"
    t.string   "note"
    t.string   "lang"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
