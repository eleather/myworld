class World < ActiveRecord::Base
  belongs_to :user
  
  has_many :adventures
  
  def pretty_name
    self.name
  end
  
  def self.find_for_user(user, conditions = nil)
    World.find(:all, :conditions => [conditions, "user_id = #{user.id}"].compact.join(" and "))
  end
end
