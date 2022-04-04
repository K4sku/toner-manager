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

ActiveRecord::Schema[7.0].define(version: 2022_04_04_183954) do
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
    t.boolean "is_duplex"
    t.boolean "is_network"
    t.boolean "has_replaceable_fuser"
    t.boolean "has_replaceable_transfer_belt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "printer_models_toner_models", id: false, force: :cascade do |t|
    t.integer "printer_model_id", null: false
    t.integer "toner_model_id", null: false
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
    t.integer "printer_model_id", null: false
    t.string "mac_address"
    t.string "serial_no"
    t.index ["printer_model_id"], name: "index_printers_on_printer_model_id"
  end

  create_table "toner_models", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "symbol"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toners", force: :cascade do |t|
    t.decimal "purchase_net_price"
    t.boolean "is_used"
    t.boolean "is_spent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "printer_id"
    t.integer "toner_model_id", null: false
    t.integer "level"
    t.index ["printer_id"], name: "index_toners_on_printer_id"
    t.index ["toner_model_id"], name: "index_toners_on_toner_model_id"
  end

  add_foreign_key "printers", "printer_models"
  add_foreign_key "toners", "printers"
  add_foreign_key "toners", "toner_models"
end
