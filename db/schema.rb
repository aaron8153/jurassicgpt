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

ActiveRecord::Schema[7.0].define(version: 2023_04_10_214608) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cages", force: :cascade do |t|
    t.string "name"
    t.integer "max_capacity"
    t.integer "power_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_cages_on_name", unique: true
  end

  create_table "dinosaurs", force: :cascade do |t|
    t.string "name"
    t.bigint "cage_id", null: false
    t.bigint "species_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cage_id"], name: "index_dinosaurs_on_cage_id"
    t.index ["species_id"], name: "index_dinosaurs_on_species_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.integer "diet_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_species_on_name", unique: true
  end

  add_foreign_key "dinosaurs", "cages"
  add_foreign_key "dinosaurs", "species"
end
