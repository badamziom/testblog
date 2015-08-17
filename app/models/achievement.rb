class Achievement < ActiveRecord::Base

  has_many :user_to_achievements
  has_many :users, :through => :user_to_achievements

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
