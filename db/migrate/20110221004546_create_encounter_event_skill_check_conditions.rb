class CreateEncounterEventSkillCheckConditions < ActiveRecord::Migration
  def self.up
    create_table :encounter_event_skill_check_conditions do |t|
      t.integer :encounter_event_id
      t.integer :skill
      t.integer :dc
      t.text :result_text

      t.timestamps
    end
  end

  def self.down
    drop_table :encounter_event_skill_check_conditions
  end
end
