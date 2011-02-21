class Encounter < ActiveRecord::Base
  belongs_to :adventure
  
  has_many :encounter_enemies
  has_many :encounter_events
  has_many :encounter_area_features
  
  # TODO: Make this method actually do something.
  def xp
    self.encounter_enemies.inject(0) { |acc, encounter_enemy| acc += encounter_enemy.number * encounter_enemy.xp }
  end
end
