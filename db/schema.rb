# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_10_231920) do

  create_table "course_notes", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "note_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_notes_on_course_id"
    t.index ["note_id"], name: "index_course_notes_on_note_id"
  end

  create_table "course_users", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_users_on_course_id"
    t.index ["user_id"], name: "index_course_users_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "note_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["note_id"], name: "index_likes_on_note_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "school"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role", default: "member"
  end

  add_foreign_key "course_notes", "courses"
  add_foreign_key "course_notes", "notes"
  add_foreign_key "course_users", "courses"
  add_foreign_key "course_users", "users"
  add_foreign_key "likes", "notes"
  add_foreign_key "likes", "users"
  add_foreign_key "notes", "users"
end
