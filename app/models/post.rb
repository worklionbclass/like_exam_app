class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  belongs_to :user
end
