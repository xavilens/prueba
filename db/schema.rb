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

ActiveRecord::Schema.define(version: 20160612094556) do

  create_table "abcs", force: :cascade do |t|
    t.integer  "a_id"
    t.integer  "b_id"
    t.integer  "c_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "abcs", ["a_id"], name: "index_abcs_on_a_id"
  add_index "abcs", ["b_id"], name: "index_abcs_on_b_id"
  add_index "abcs", ["c_id"], name: "index_abcs_on_c_id"

  create_table "as", force: :cascade do |t|
  end

  create_table "bs", force: :cascade do |t|
  end

  create_table "cs", force: :cascade do |t|
  end

  create_table "grupos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "miembros", force: :cascade do |t|
    t.integer "musico_id"
    t.integer "grupo_id"
    t.string  "instrumento"
  end

  create_table "musicos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "userable_id"
    t.string   "userable_type"
  end

end
