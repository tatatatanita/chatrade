class Forum < ApplicationRecord
  has_many :posts
  has_many :forums_users
  has_many :forums, through: :forums_users
end
