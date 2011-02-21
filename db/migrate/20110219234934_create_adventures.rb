class CreateAdventures < ActiveRecord::Migration
  def self.up
    create_table :adventures do |t|
      t.string :name
      t.integer :level
      t.text :description
      t.string :tiles
      t.text :expanding_description

      t.timestamps
    end
  end

  def self.down
    drop_table :adventures
  end
end
