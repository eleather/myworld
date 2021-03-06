class CreateWorlds < ActiveRecord::Migration
  def self.up
    create_table :worlds do |t|
      t.integer :user_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :worlds
  end
end
