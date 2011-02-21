class CreateEncounterEnemies < ActiveRecord::Migration
  def self.up
    create_table :encounter_enemies do |t|
      t.integer :encounter_id
      t.string :name
      t.integer :number
      t.string :abbreviation
      t.integer :xp
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :encounter_enemies
  end
end
