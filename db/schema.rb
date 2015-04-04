# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150404161714) do

  create_table "bookings", force: true do |t|
    t.date     "bdateMade"
    t.integer  "numofpeople"
    t.date     "beventdate"
    t.string   "beventtype"
    t.integer  "bstime"
    t.string   "bcompleted"
    t.boolean  "active_status"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "catering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qrcode"
  end

  add_index "bookings", ["user_id", "restaurant_id"], name: "index_bookings_on_user_id_and_restaurant_id"

  create_table "categories", force: true do |t|
    t.string   "nametype"
    t.string   "timeopen"
    t.boolean  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caterings", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "lowprice"
    t.integer  "highprice"
    t.string   "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.string   "title"
    t.string   "picture"
    t.string   "address"
    t.string   "appetizer_1"
    t.string   "appetizer_2"
    t.string   "appetizer_3"
    t.string   "appetizer_4"
    t.string   "appetizer_5"
    t.string   "appetizer_6"
    t.string   "appetizer_7"
    t.string   "appetizer_8"
    t.string   "maincourse_1"
    t.string   "maincourse_2"
    t.string   "maincourse_3"
    t.string   "maincourse_4"
    t.string   "maincourse_5"
    t.string   "maincourse_6"
    t.string   "maincourse_7"
    t.string   "maincourse_8"
    t.string   "maincourse_9"
    t.string   "maincourse_10"
    t.string   "maincourse_11"
    t.string   "maincourse_12"
    t.string   "maincourse_13"
    t.string   "maincourse_14"
    t.string   "maincourse_15"
    t.string   "dessert_1"
    t.string   "dessert_2"
    t.string   "dessert_3"
    t.string   "dessert_4"
    t.string   "dessert_5"
    t.string   "dessert_6"
    t.string   "dessert_7"
    t.string   "dessert_8"
    t.string   "dessert_9"
    t.string   "dessert_10"
    t.string   "drinks_1"
    t.string   "drinks_2"
    t.string   "drinks_3"
    t.string   "drinks_4"
    t.string   "drinks_5"
    t.string   "drinks_6"
    t.string   "drinks_7"
    t.string   "drinks_8"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
    t.string   "PriceAppetizer1"
    t.string   "PriceAppetizer2"
    t.string   "PriceAppetizer4"
    t.string   "PriceAppetizer5"
    t.string   "PriceAppetizer6"
    t.string   "PriceAppetizer7"
    t.string   "PriceAppetizer8"
  end

  create_table "moneyinfos", force: true do |t|
    t.string   "enddate"
    t.string   "startdate"
    t.string   "paymenttype"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "catering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "category_id"
    t.integer  "restaurant_id"
    t.integer  "catering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "address"
    t.integer  "lowprice"
    t.integer  "highprice"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "manufacturer"
    t.string   "category"
  end

  add_index "restaurants", ["category_id"], name: "index_restaurants_on_category_id"

  create_table "reviews", force: true do |t|
    t.string   "review"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_users", force: true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_cart_items", force: true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "quantity"
    t.integer  "item_id"
    t.string   "item_type"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "dob"
    t.string   "gender"
    t.string   "email"
    t.string   "number"
    t.integer  "loyaltypoint"
    t.integer  "moneyinfo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "password"
    t.boolean  "email_confirmed", default: false
    t.string   "confirm_token"
    t.string   "address"
    t.string   "payment"
  end

  create_table "userves", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "outh_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
