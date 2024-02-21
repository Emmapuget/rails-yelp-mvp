class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, length: { maximum: 5 }, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
