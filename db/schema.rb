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

ActiveRecord::Schema.define(:version => 20101019163409) do

  create_table "amber_alerts", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.string   "race"
    t.string   "hairColor"
    t.text     "description"
    t.text     "lastSeenLocation"
    t.time     "lastSeenTime"
    t.time     "submitTime"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attractions", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "min_height"
    t.integer  "fastpass"
    t.decimal  "fee"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attraction_type"
    t.integer  "max_tix_hour"
    t.integer  "wait_time"
    t.integer  "is_fastpass"
    t.string   "photo"
  end

  create_table "customers", :force => true do |t|
    t.string   "email"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "name"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "event_date"
    t.time     "event_time"
    t.string   "arena"
    t.string   "performers"
    t.string   "description"
    t.string   "event_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "frequency"
  end

  create_table "fastpasses", :force => true do |t|
    t.integer  "attractions_id"
    t.integer  "hour"
    t.string   "cust_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ticket_num"
    t.integer  "is_used"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
