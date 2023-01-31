class Post < ApplicationRecord
  resourcify

  has_many_attached :images
  belongs_to :user

  scope :headline_posts, -> { where(if_headline: true) }
  scope :normal_posts, -> { where(if_headline: false) }
end
