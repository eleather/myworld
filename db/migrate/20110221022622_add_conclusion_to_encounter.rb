class AddConclusionToEncounter < ActiveRecord::Migration
  def self.up
    add_column(:encounters, :conclusion, :text)
  end

  def self.down
    remove_column(:encounters, :conclusion)
  end
end
