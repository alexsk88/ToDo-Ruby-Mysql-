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

ActiveRecord::Schema.define(version: 2020_07_09_040332) do

  create_table "TABLE 109", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "COL 1", limit: 2
    t.string "COL 2", limit: 25
    t.string "COL 3", limit: 76
    t.string "COL 4", limit: 6
    t.string "COL 5", limit: 8
    t.string "COL 6", limit: 19
    t.string "COL 7", limit: 19
    t.string "COL 8", limit: 10
    t.string "COL 9", limit: 6
    t.string "COL 10", limit: 4
    t.string "COL 11", limit: 9
    t.string "COL 12", limit: 7
    t.string "COL 13", limit: 17
    t.string "COL 14", limit: 20
    t.string "COL 15", limit: 17
    t.string "COL 16", limit: 18
    t.string "COL 17", limit: 15
    t.string "COL 18", limit: 18
    t.string "COL 19", limit: 15
    t.string "COL 20", limit: 16
    t.string "COL 21", limit: 9
  end

  create_table "answers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "respuesta"
    t.integer "correcta"
    t.integer "question_id"
    t.integer "internal_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id", default: 0
    t.integer "status"
    t.integer "authorized_employees", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.text "detail"
    t.boolean "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "date_start"
    t.datetime "date_end"
    t.string "file_file_name"
    t.string "file_content_type"
    t.bigint "file_file_size"
    t.datetime "file_updated_at"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "tasks", "users"
end
