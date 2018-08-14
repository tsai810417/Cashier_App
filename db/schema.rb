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

ActiveRecord::Schema.define(version: 2018_07_20_220602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_products", force: :cascade do |t|
    t.integer "quantity"
    t.integer "price_cents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id", null: false
    t.integer "product_id", null: false
    t.string "sugar", default: "100", null: false
    t.string "ice", default: "100", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "paid", default: false, null: false
    t.integer "subtatol_cents", default: 0, null: false
    t.integer "tax_cents", default: 0, null: false
    t.float "tax_rate", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "balance_cents", default: 0, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price_cents", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id", null: false
  end
end
