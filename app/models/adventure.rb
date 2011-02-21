class Adventure < ActiveRecord::Base
  has_many :encounters
  
  def xp
    self.encounters.inject(0) { |a,e| a += e.xp }
  end
end
