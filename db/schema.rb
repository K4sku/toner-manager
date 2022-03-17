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

ActiveRecord::Schema[7.0].define(version: 2022_03_16_183128) do
  create_table "part_kits", force: :cascade do |t|
    t.string "type"
    t.string "oem_name"
    t.decimal "purchase_net_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "printer_models", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.boolean "is_color"
    t.string "toner_cyan"
    t.string "toner_magenta"
    t.string "toner_yellow"
    t.string "toner_black"
    t.boolean "has_replaceable_fuser"
    t.string "fuser_kit"
    t.boolean "has_replaceable_transfer_belt"
    t.string "transfer_kit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "printers", force: :cascade do |t|
    t.string "name"
    t.string "asset_id"
    t.date "purchase_date"
    t.decimal "purchase_net_price"
    t.string "location"
    t.string "ip_reservation"
    t.string "primary_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toners", force: :cascade do |t|
    t.string "type"
    t.integer "color"
    t.string "oem_name"
    t.decimal "purchase_net_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
