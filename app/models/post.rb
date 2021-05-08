class Post < ApplicationRecord
  belongs_to :category

  # scope :ordered, -> { order(created_at: :desc)}
  scope :ordered, -> { order(id: :desc)}
  scope :with_categories, -> {includes(:category)}
end
