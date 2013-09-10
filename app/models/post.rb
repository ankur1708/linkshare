class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  
  has_many :assignments
  has_many :tags, :through => :assignments
  
  has_many :downvote_posts
    has_many :downvoted_by, through: :downvote_posts, source: :user

    has_many :upvote_posts
    has_many :upvoted_by, through: :upvote_posts, source: :user

    has_many :seen_posts
    has_many :seen_by, through: :seen_posts, source: :user

    has_many :watch_later_posts
    has_many :wishlisted_by, through: :watch_later_posts, source: :user

    attr_accessible :description, :title, :url, :vote, :user_id
end
