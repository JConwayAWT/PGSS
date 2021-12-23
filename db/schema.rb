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

ActiveRecord::Schema.define(version: 2021_12_22_225840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alums", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "current_last_name"
    t.string "high_school"
    t.integer "pgss_year"
    t.string "city"
    t.string "email"
    t.integer "iu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hometown"
    t.string "state"
  end

  create_table "date_configs", force: :cascade do |t|
    t.datetime "application_open_date"
    t.datetime "server_time_application_due_date"
    t.datetime "exposed_due_date"
    t.datetime "decision_date"
    t.datetime "decision_notification_date"
    t.datetime "counselor_application_deadline_date"
    t.datetime "counselor_application_start_date"
    t.datetime "acceptance_date"
    t.datetime "program_start_date"
    t.datetime "move_in_date"
    t.datetime "parents_visit_saturday_date"
    t.datetime "parents_visit_sunday_date"
    t.datetime "program_end_date"
    t.datetime "symposium_thursday_date"
    t.datetime "symposium_friday_date"
    t.datetime "move_out_deadline_date"
    t.datetime "counselor_job_ad_end_date"
    t.integer "application_year"
    t.integer "application_next_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
