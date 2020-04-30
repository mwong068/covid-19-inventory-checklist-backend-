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

ActiveRecord::Schema.define(version: 2020_04_30_002639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "helpful_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "description"
    t.string "availability"
    t.string "image_url"
    t.integer "helpful_user_id"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "helpful_users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "name"
    t.string "location"
    t.integer "family_size"
    t.string "phone_number"
    t.boolean "has_children"
    t.boolean "can_deliver"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "in_need_users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "name"
    t.string "location"
    t.integer "family_size"
    t.boolean "has_children"
    t.boolean "can_pickup"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "message_text"
    t.integer "helpful_user_id"
    t.integer "in_need_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "needed_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "description"
    t.string "urgency"
    t.integer "in_need_user_id"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
