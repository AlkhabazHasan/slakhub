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

ActiveRecord::Schema.define(version: 2018_10_05_073009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "duration"
    t.string "meals"
    t.boolean "transportation", default: true, null: false
    t.bigint "tour_id"
    t.bigint "user_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "round_id"
    t.index ["tour_id"], name: "index_destinations_on_tour_id"
    t.index ["user_id"], name: "index_destinations_on_user_id"
    t.index ["workspace_id"], name: "index_destinations_on_workspace_id"
  end

  create_table "details", force: :cascade do |t|
    t.bigint "workspace_id"
    t.bigint "user_id"
    t.bigint "round_id"
    t.bigint "tour_id"
    t.bigint "destination_id"
    t.bigint "flight_id"
    t.bigint "hotel_id"
    t.bigint "room_id"
    t.bigint "traveller_id"
    t.boolean "visa", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_details_on_destination_id"
    t.index ["flight_id"], name: "index_details_on_flight_id"
    t.index ["hotel_id"], name: "index_details_on_hotel_id"
    t.index ["room_id"], name: "index_details_on_room_id"
    t.index ["round_id"], name: "index_details_on_round_id"
    t.index ["tour_id"], name: "index_details_on_tour_id"
    t.index ["traveller_id"], name: "index_details_on_traveller_id"
    t.index ["user_id"], name: "index_details_on_user_id"
    t.index ["workspace_id"], name: "index_details_on_workspace_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "board"
    t.string "from_country"
    t.string "from_city"
    t.integer "seats"
    t.integer "vacancies"
    t.string "airline"
    t.datetime "departure"
    t.datetime "arrival"
    t.boolean "transit", default: false, null: false
    t.datetime "duration"
    t.string "to_country"
    t.string "to_city"
    t.bigint "destination_id"
    t.bigint "tour_id"
    t.bigint "round_id"
    t.bigint "user_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_flights_on_destination_id"
    t.index ["round_id"], name: "index_flights_on_round_id"
    t.index ["tour_id"], name: "index_flights_on_tour_id"
    t.index ["user_id"], name: "index_flights_on_user_id"
    t.index ["workspace_id"], name: "index_flights_on_workspace_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "town"
    t.text "building"
    t.string "phone"
    t.string "email"
    t.integer "floor"
    t.bigint "destination_id"
    t.bigint "user_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street"
    t.string "postal"
    t.index ["destination_id"], name: "index_hotels_on_destination_id"
    t.index ["user_id"], name: "index_hotels_on_user_id"
    t.index ["workspace_id"], name: "index_hotels_on_workspace_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.boolean "invitation_state", default: false, null: false
    t.bigint "user_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_invitations_on_user_id"
    t.index ["workspace_id"], name: "index_invitations_on_workspace_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.decimal "floor"
    t.decimal "room"
    t.decimal "bed"
    t.bigint "destination_id"
    t.bigint "hotel_id"
    t.bigint "workspace_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_rooms_on_destination_id"
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
    t.index ["user_id"], name: "index_rooms_on_user_id"
    t.index ["workspace_id"], name: "index_rooms_on_workspace_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.decimal "total"
    t.string "country_1"
    t.string "country_2"
    t.string "country_3"
    t.string "country_4"
    t.string "country_5"
    t.string "country_6"
    t.string "country_7"
    t.string "country_8"
    t.float "price", null: false
    t.bigint "user_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rounds_on_user_id"
    t.index ["workspace_id"], name: "index_rounds_on_workspace_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "country", null: false
    t.boolean "visa", default: true, null: false
    t.bigint "round_id"
    t.bigint "user_id"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id"], name: "index_tours_on_round_id"
    t.index ["user_id"], name: "index_tours_on_user_id"
    t.index ["workspace_id"], name: "index_tours_on_workspace_id"
  end

  create_table "travellers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "passport"
    t.string "cpr"
    t.string "phone"
    t.string "mobile"
    t.string "email"
    t.text "flat"
    t.datetime "last_trip"
    t.datetime "next_trip"
    t.bigint "workspace_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "building"
    t.string "street"
    t.string "postal"
    t.string "town"
    t.string "country"
    t.index ["user_id"], name: "index_travellers_on_user_id"
    t.index ["workspace_id"], name: "index_travellers_on_workspace_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "confirm_code"
    t.string "confirm_state"
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.string "email"
    t.string "phone"
    t.string "auth"
    t.string "role"
    t.bigint "workspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workspace_id"], name: "index_users_on_workspace_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name"
    t.string "subdomain"
    t.string "avatar"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "destinations", "rounds"
  add_foreign_key "destinations", "tours"
  add_foreign_key "destinations", "users"
  add_foreign_key "destinations", "workspaces"
  add_foreign_key "details", "destinations"
  add_foreign_key "details", "flights"
  add_foreign_key "details", "hotels"
  add_foreign_key "details", "rooms"
  add_foreign_key "details", "rounds"
  add_foreign_key "details", "tours"
  add_foreign_key "details", "travellers"
  add_foreign_key "details", "users"
  add_foreign_key "details", "workspaces"
  add_foreign_key "flights", "destinations"
  add_foreign_key "flights", "rounds"
  add_foreign_key "flights", "tours"
  add_foreign_key "flights", "users"
  add_foreign_key "flights", "workspaces"
  add_foreign_key "hotels", "destinations"
  add_foreign_key "hotels", "users"
  add_foreign_key "hotels", "workspaces"
  add_foreign_key "invitations", "users"
  add_foreign_key "invitations", "workspaces"
  add_foreign_key "rooms", "destinations"
  add_foreign_key "rooms", "hotels"
  add_foreign_key "rooms", "users"
  add_foreign_key "rooms", "workspaces"
  add_foreign_key "rounds", "users"
  add_foreign_key "rounds", "workspaces"
  add_foreign_key "tours", "rounds"
  add_foreign_key "tours", "users"
  add_foreign_key "tours", "workspaces"
  add_foreign_key "travellers", "users"
  add_foreign_key "travellers", "workspaces"
  add_foreign_key "users", "workspaces"
end
