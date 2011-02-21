class EncounterEvent < ActiveRecord::Base
  belongs_to :encounter
  
  has_many :encounter_event_miscellaneous_conditions
  has_many :encounter_event_skill_check_conditions
end
