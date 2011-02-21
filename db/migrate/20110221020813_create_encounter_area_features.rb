class CreateEncounterAreaFeatures < ActiveRecord::Migration
  def self.up
    create_table :encounter_area_features do |t|
      t.integer :encounter_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :encounter_area_features
  end
end
