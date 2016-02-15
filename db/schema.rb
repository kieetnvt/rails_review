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

ActiveRecord::Schema.define(version: 20160215073223) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "supplier_id",    limit: 4
    t.string   "account_number", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "accounts", ["supplier_id"], name: "index_accounts_on_supplier_id", using: :btree

  create_table "appointments", force: :cascade do |t|
    t.integer  "physician_id", limit: 4
    t.integer  "patient_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
  add_index "appointments", ["physician_id"], name: "index_appointments_on_physician_id", using: :btree

  create_table "assemblies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "assemblies_parts", id: false, force: :cascade do |t|
    t.integer "assembly_id", limit: 4
    t.integer "part_id",     limit: 4
  end

  add_index "assemblies_parts", ["assembly_id"], name: "index_assemblies_parts_on_assembly_id", using: :btree
  add_index "assemblies_parts", ["part_id"], name: "index_assemblies_parts_on_part_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "manager_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "employees", ["manager_id"], name: "index_employees_on_manager_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.datetime "order_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "parts", force: :cascade do |t|
    t.string   "part_number", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
