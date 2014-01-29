ActiveRecord::Schema.define(version: 20140129004347) do
  enable_extension "plpgsql"

  create_table "gardens", force: true do |t|
    t.integer  "user_id"
    t.string   "zone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "text_notifications"
    t.boolean  "email_notifications"
    t.boolean  "phone_notifications"
  end

end
