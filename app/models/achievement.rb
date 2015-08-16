class Achievement < ActiveRecord::Base

  has_many :user_to_achievements
  has_many :users, :through => :user_to_achievements

end
