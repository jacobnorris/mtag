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

ActiveRecord::Schema.define(version: 20150319053050) do

  create_table "cards", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "converted_mana_cost"
    t.integer  "colored_mana_cost"
    t.string   "supertype"
    t.string   "type"
    t.string   "subtype"
    t.string   "set"
    t.string   "rarity"
    t.text     "rules_text"
    t.text     "reminder_text"
    t.text     "flavor_text"
    t.string   "power"
    t.string   "toughness"
    t.string   "artist"
    t.string   "collector_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
