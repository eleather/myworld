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

ActiveRecord::Schema.define(:version => 20110221022622) do

  create_table "adventures", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.text     "description"
    t.string   "tiles"
    t.text     "expanding_description"
    t.datetime "created_at"
    t.datetime "updated_at"
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

end