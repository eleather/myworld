class User < ActiveRecord::Base
  # Include devise modules. 
  # devise :database_authenticatable, :confirmable, :recoverable, :registerable, :rememberable, :trackable, :lockable
  devise :database_authenticatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  has_many :worlds
  has_many :adventures
end
