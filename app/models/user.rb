class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :posts
  
   has_many :downvote_posts
  has_many :downvotes, through: :downvote_posts, source: :post

  has_many :upvote_posts
  has_many :upvotes, through: :upvote_posts, source: :post

  has_many :seen_posts
  has_many :seenlist, through: :seen_posts, source: :post

  has_many :watch_later_posts
  has_many :wishlist, through: :watch_later_posts, source: :post

  attr_accessor :password
    attr_accessible  :credits, :email, :password, :username, :password_confirmation
    
    before_save :encrypt_password

    EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
    validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
    #Only on Create so other actions like update password attribute can be nil
    validates_length_of :password, :in => 6..20, :on => :create
    
    def self.authenticate(email, password)
      user = find_by_email(email)
      if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
        user
      else
        nil
      end
    end
    
    def encrypt_password
      if password.present?
        self.password_salt = BCrypt::Engine.generate_salt
        self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      end
    end
    
end
