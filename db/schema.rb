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

ActiveRecord::Schema.define(version: 20210629040233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "information", force: true do |t|
    t.integer  "entity_id"
    t.string   "entity_type"
    t.integer  "information_template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "information", ["information_template_id"], name: "index_information_on_information_template_id", using: :btree

  create_table "information_field_templates", force: true do |t|
    t.integer  "information_template_id"
    t.string   "field_name"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "information_field_templates", ["information_template_id"], name: "index_information_field_templates_on_information_template_id", using: :btree

  create_table "information_fields", force: true do |t|
    t.string   "field_value"
    t.integer  "information_field_template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "information_fields", ["information_field_template_id"], name: "index_information_fields_on_information_field_template_id", using: :btree

  create_table "information_templates", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "information_templates", ["user_id"], name: "index_information_templates_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vechiles", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "user_id"
    t.string   "registration_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vechiles", ["user_id"], name: "index_vechiles_on_user_id", using: :btree

end
