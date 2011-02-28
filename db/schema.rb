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

ActiveRecord::Schema.define(:version => 20110227231506) do

  create_table "adventures", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.text     "description"
    t.string   "tiles"
    t.text     "expanding_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",               :default => 1, :null => false
  end

  create_table "encounter_area_features", :force => true do |t|
    t.integer  "encounter_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounter_enemies", :force => true do |t|
    t.integer  "encounter_id"
    t.string   "name"
    t.integer  "number"
    t.string   "abbreviation"
    t.integer  "xp"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounter_event_miscellaneous_conditions", :force => true do |t|
    t.integer  "encounter_event_id"
    t.text     "condition_text"
    t.text     "result_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounter_event_skill_check_conditions", :force => true do |t|
    t.integer  "encounter_event_id"
    t.integer  "skill"
    t.integer  "dc"
    t.text     "result_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounter_events", :force => true do |t|
    t.integer  "encounter_id"
    t.text     "when"
    t.text     "text_to_read"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounters", :force => true do |t|
    t.integer  "adventure_id"
    t.string   "name"
    t.integer  "level"
    t.text     "setup"
    t.text     "tactics"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "conclusion"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",                     :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "worlds", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
