class EncounterEventSkillCheckCondition < ActiveRecord::Base
  belongs_to :encounter_event
  
  SKILLS = {
    :acrobatics => 0,
    :arcana => 1,
    :athletics => 2, 
    :bluff => 3, 
    :diplomacy => 4,
    :dungeoneering => 5,
    :endurance => 6,
    :heal => 7, 
    :history => 8,
    :insight => 9,
    :intimidate => 10,
    :nature => 11,
    :perception => 12,
    :religion => 13,
    :stealth => 14,
    :streetwise => 15,
    :thievery => 16
  }
  
  has_enumeration :skill, SKILLS
end
