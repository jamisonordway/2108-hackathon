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

ActiveRecord::Schema.define(version: 2021_09_22_173726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "lesson_date_id"
    t.integer "status"
    t.index ["lesson_date_id"], name: "index_attendances_on_lesson_date_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.bigint "mod_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["mod_id"], name: "index_instructors_on_mod_id"
  end

  create_table "lesson_dates", force: :cascade do |t|
    t.integer "time_of_day"
    t.bigint "mod_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mod_id"], name: "index_lesson_dates_on_mod_id"
  end

  create_table "mods", force: :cascade do |t|
    t.string "name"
    t.integer "program"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mod_id"
    t.index ["mod_id"], name: "index_students_on_mod_id"
  end

  add_foreign_key "attendances", "lesson_dates"
  add_foreign_key "instructors", "mods"
  add_foreign_key "lesson_dates", "mods"
  add_foreign_key "students", "mods"
end
