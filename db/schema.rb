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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131228075743) do

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.string   "short_form"
    t.string   "type"
    t.string   "president"
    t.string   "symbol_image_path"
    t.integer  "no_mp"
    t.text     "details"
    t.text     "motto"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "constituency"
    t.string   "highest_degree"
    t.string   "image_path"
    t.string   "birth_place"
    t.string   "party_id"
    t.boolean  "sex"
    t.date     "birth_date"
    t.integer  "no_criminal_case"
    t.integer  "no_civil_case"
    t.text     "convicted_case"
    t.text     "accused_case"
    t.text     "resume"
    t.text     "details"
    t.decimal  "immovable_asset",  :precision => 15, :scale => 2
    t.decimal  "movable_asset",    :precision => 15, :scale => 2
    t.decimal  "liability",        :precision => 15, :scale => 2
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

end
