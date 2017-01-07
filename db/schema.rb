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

ActiveRecord::Schema.define(version: 20170106214222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tata", force: :cascade do |t|
    t.integer  "year"
    t.string   "model"
    t.integer  "acceleration"
    t.integer  "braking"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "owner_id"
  end

  add_index "tata", ["owner_id"], name: "index_tata_on_owner_id", using: :btree

  create_table "teslas", force: :cascade do |t|
    t.integer  "year"
    t.string   "model"
    t.integer  "acceleration"
    t.integer  "braking"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "owner_id"
  end

  add_index "teslas", ["owner_id"], name: "index_teslas_on_owner_id", using: :btree

  create_table "toyota", force: :cascade do |t|
    t.integer  "year"
    t.string   "model"
    t.integer  "acceleration"
    t.integer  "braking"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "owner_id"
  end

  add_index "toyota", ["owner_id"], name: "index_toyota_on_owner_id", using: :btree

  add_foreign_key "tata", "owners"
  add_foreign_key "teslas", "owners"
  add_foreign_key "toyota", "owners"
end
