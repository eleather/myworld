class CreateEncounterEventMiscellaneousConditions < ActiveRecord::Migration
  def self.up
    create_table :encounter_event_miscellaneous_conditions do |t|
      t.integer :encounter_event_id
      t.text :condition_text
      t.text :result_text

      t.timestamps
    end
  end

  def self.down
    drop_table :encounter_event_miscellaneous_conditions
  end
end
