# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_13_120112) do
  create_table "approve_months", charset: "utf8mb4", force: :cascade do |t|
    t.integer "year", null: false
    t.integer "month", null: false
    t.boolean "is_approve", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employer_shifts", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "employer_id", null: false
    t.bigint "shift_date_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employer_id"], name: "index_employer_shifts_on_employer_id"
    t.index ["shift_date_id"], name: "index_employer_shifts_on_shift_date_id"
  end

  create_table "employer_skills", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "employer_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employer_id"], name: "index_employer_skills_on_employer_id"
    t.index ["skill_id"], name: "index_employer_skills_on_skill_id"
  end

  create_table "employers", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.integer "number", null: false
    t.boolean "is_manager", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", charset: "utf8mb4", force: :cascade do |t|
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shift_dates", charset: "utf8mb4", force: :cascade do |t|
    t.date "work_day", null: false
    t.boolean "is_attendance", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shift_times", charset: "utf8mb4", force: :cascade do |t|
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_processing", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.integer "number", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employer_shifts", "employers"
  add_foreign_key "employer_shifts", "shift_dates"
  add_foreign_key "employer_skills", "employers"
  add_foreign_key "employer_skills", "skills"
end
