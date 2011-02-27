class Adventure < ActiveRecord::Base
  belongs_to :user
  
  has_many :encounters
  
  def xp
    self.encounters.inject(0) { |a,e| a += e.xp }
  end
end
