class EncounterEventSkillCheckCondition < ActiveRecord::Base
  belongs_to :encounter_event
  
  has_enumeration :skill, [:perception]
end
