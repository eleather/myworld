class World < ActiveRecord::Base
  belongs_to :user
  
  has_many :adventures
end
