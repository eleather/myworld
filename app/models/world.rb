class World < ActiveRecord::Base
  belongs_to :user
  
  has_many :adventures
  
  def pretty_name
    self.name
  end
end
