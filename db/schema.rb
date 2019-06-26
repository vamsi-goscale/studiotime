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

ActiveRecord::Schema.define(version: 2019_01_22_235637) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.integer "status", null: false
    t.text "message"
    t.string "card_holder_name", null: false
    t.string "country", null: false
    t.text "billing_address", null: false
    t.string "postal_code", null: false
    t.string "city", null: false
    t.string "state"
    t.string "card_number"
    t.string "expiry_month"
    t.string "expiry_year"
    t.string "cvv"
    t.float "sub_total", null: false
    t.float "studiotime_fee", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url", null: false
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "slots", force: :cascade do |t|
    t.integer "booking_id"
    t.date "date", null: false
    t.time "from", null: false
    t.time "to", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_slots_on_booking_id"
  end

  create_table "studio_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studio_types_studios", id: false, force: :cascade do |t|
    t.integer "studio_id", null: false
    t.integer "studio_type_id", null: false
    t.index ["studio_id", "studio_type_id"], name: "index_studio_types_studios_on_studio_id_and_studio_type_id"
    t.index ["studio_type_id", "studio_id"], name: "index_studio_types_studios_on_studio_type_id_and_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.integer "user_id"
    t.string "name", null: false
    t.text "description", null: false
    t.integer "min_booking_time", null: false
    t.text "past_clients"
    t.text "audio_samples"
    t.time "opening_time", null: false
    t.time "closing_time", null: false
    t.text "amenities", null: false
    t.text "main_equipment", null: false
    t.text "rules", null: false
    t.text "address", null: false
    t.string "landmark", default: ""
    t.string "lat", null: false
    t.string "lng", null: false
    t.float "price_per_hour", null: false
    t.boolean "aud_eng_included", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.text "bio", default: ""
    t.string "website", default: ""
    t.string "facebook_handle", default: ""
    t.string "twitter_handle", default: ""
    t.string "insta_handle", default: ""
    t.string "stream_url", default: ""
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "mobile", default: ""
    t.boolean "email_verified", default: false
    t.boolean "mobile_verified", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verifications", force: :cascade do |t|
    t.integer "user_id"
    t.string "token"
    t.datetime "expires_at"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_verifications_on_user_id"
  end

end
