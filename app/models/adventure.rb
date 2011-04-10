class Adventure < ActiveRecord::Base
  belongs_to :user
  belongs_to :world
  
  has_many :encounters
  
  def xp
    self.encounters.inject(0) { |a,e| a += e.xp }
  end
  
  def self.find_for_user(user, conditions = nil)
    Adventure.find(:all, :conditions => [conditions, "user_id = #{user.id}"].compact.join(" and "))
  end
end
