class CreateEncounterEvents < ActiveRecord::Migration
  def self.up
    create_table :encounter_events do |t|
      t.integer :encounter_id
      t.text :when
      t.text :text_to_read

      t.timestamps
    end
  end

  def self.down
    drop_table :encounter_events
  end
end
