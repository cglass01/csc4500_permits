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

ActiveRecord::Schema.define(version: 20171028010233) do

  create_table "emergency_contacts", primary_key: "contact_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "home_phone"
    t.string "cell_phone"
    t.string "office_phone"
    t.string "student_id"
    t.string "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "fk_rails_030581feee"
    t.index ["student_id"], name: "fk_rails_ae91a98c1b"
  end

  create_table "faculties", primary_key: "faculty_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "home_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "home_phone"
    t.string "cell_phone"
    t.string "office_phone"
    t.boolean "new_faculty"
    t.string "department"
    t.string "office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permits", primary_key: "permit_number", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date_issued"
    t.string "issued_by"
    t.date "date_entered"
    t.string "entered_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", primary_key: "student_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "home_address"
    t.string "home_city"
    t.string "home_state"
    t.string "home_zip"
    t.string "school_year_address"
    t.string "school_year_city"
    t.string "school_year_zip"
    t.string "room_number"
    t.string "home_phone"
    t.string "cell_phone"
    t.boolean "new_student"
    t.boolean "returning_student"
    t.string "athletic_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", primary_key: "vehicle_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "year"
    t.string "color"
    t.string "make"
    t.string "model"
    t.string "license_number"
    t.string "state_licensed"
    t.string "experation_year"
    t.string "permit_number"
    t.string "student_id"
    t.string "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["faculty_id"], name: "fk_rails_e75e1508bb"
    t.index ["permit_number"], name: "fk_rails_fb450a8bbd"
    t.index ["student_id"], name: "fk_rails_8d7731d871"
  end

  add_foreign_key "emergency_contacts", "faculties", primary_key: "faculty_id"
  add_foreign_key "emergency_contacts", "students", primary_key: "student_id"
  add_foreign_key "vehicles", "faculties", primary_key: "faculty_id"
  add_foreign_key "vehicles", "permits", column: "permit_number", primary_key: "permit_number"
  add_foreign_key "vehicles", "students", primary_key: "student_id"
end
