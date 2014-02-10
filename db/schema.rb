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

ActiveRecord::Schema.define(version: 20140210221250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beds", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "depth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
    t.integer  "user_id"
    t.string   "zipcode"
  end

  create_table "plantings", force: true do |t|
    t.integer  "bed_id"
    t.integer  "plant_id"
    t.date     "planting_date"
    t.date     "estimated_harvest_date"
    t.boolean  "harvested"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "row"
    t.string   "column"
    t.integer  "x_coord"
    t.integer  "y_coord"
  end

  create_table "plants", force: true do |t|
    t.string   "name"
    t.string   "days_to_harvest"
    t.string   "age_of_transplant"
    t.boolean  "warm_season"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "spacing"
    t.string   "germination_temperature"
    t.string   "days_to_germination"
    t.string   "depth"
  end

end
