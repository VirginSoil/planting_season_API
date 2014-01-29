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

ActiveRecord::Schema.define(version: 20140129181142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beds", force: true do |t|
    t.string   "name"
    t.integer  "garden_id"
    t.integer  "width"
    t.integer  "depth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gardens", force: true do |t|
    t.integer  "user_id"
    t.string   "zone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "text_notifications"
    t.boolean  "email_notifications"
    t.boolean  "phone_notifications"
  end

  create_table "plantings", force: true do |t|
    t.integer  "bed_id"
    t.integer  "plant_id"
    t.date     "planting_date"
    t.date     "estimated_harvest_date"
    t.boolean  "harvested"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
