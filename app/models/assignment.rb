class Assignment < ActiveRecord::Base
  belongs_to :post
  belongs_to :tag
  attr_accessible :post_id, :tag_id
end
