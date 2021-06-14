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

ActiveRecord::Schema.define(version: 2021_06_14_004128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.decimal "reputation"
    t.string "gender"
    t.boolean "flagged?"
    t.string "mp_username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "host_id"
    t.decimal "price"
    t.boolean "paid?"
    t.datetime "trip_begin"
    t.datetime "trip_end"
    t.datetime "date_booked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.decimal "reputation"
    t.string "gender"
    t.boolean "flagged?"
    t.string "mp_username"
    t.boolean "superhost?"
    t.integer "max_bookings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "private_showers", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.decimal "price"
    t.decimal "rating"
    t.string "availability"
    t.string "description"
    t.integer "host_id"
    t.boolean "active?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "public_showers", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.decimal "latitude"
    t.decimal "longitude"
    t.decimal "price"
    t.decimal "rating"
    t.string "availability"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "public_shower_id"
    t.integer "private_shower_id"
    t.integer "host_id"
    t.string "body"
    t.string "title"
    t.decimal "rating"
    t.boolean "flagged?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.decimal "reputation"
    t.string "gender"
    t.boolean "flagged?"
    t.string "mp_username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
