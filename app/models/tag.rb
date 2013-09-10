class Tag < ActiveRecord::Base
  has_many :assignments
  has_many :posts, through: :assignments
  attr_accessible :name
end
