class CreateEncounters < ActiveRecord::Migration
  def self.up
    create_table :encounters do |t|
      t.integer :adventure_id
      t.string :name
      t.integer :level
      t.text :setup
      t.text :tactics

      t.timestamps
    end
  end

  def self.down
    drop_table :encounters
  end
end
