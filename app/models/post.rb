class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum, optional: true
  # has_many :likes_posts
end