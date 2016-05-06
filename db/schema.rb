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

ActiveRecord::Schema.define(version: 20160506002119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tour_operator_registers", force: :cascade do |t|
    t.string   "contact_name"
    t.integer  "role_contact"
    t.string   "email"
    t.string   "company_name_en"
    t.string   "company_name_local"
    t.integer  "business_type_id"
    t.string   "main_phone_no"
    t.string   "company_website"
    t.string   "license_number"
    t.string   "license_attachment"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "status",             default: 0
  end

  add_index "tour_operator_registers", ["business_type_id"], name: "index_tour_operator_registers_on_business_type_id", using: :btree

  add_foreign_key "tour_operator_registers", "business_types"
end
