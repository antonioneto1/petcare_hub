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

ActiveRecord::Schema[7.0].define(version: 2024_06_08_170417) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "user_type"
    t.string "phone"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "streat"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.string "neighborhood"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "establishment_id"
    t.integer "app_user_id"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.integer "owner_id"
    t.string "phone"
    t.string "document"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "streat"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.string "neighborhood"
  end

end
