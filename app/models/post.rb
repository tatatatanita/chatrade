class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many :likes_posts
end
