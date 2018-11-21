class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, uniqueness: true, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0..5] }, numericality: true
end
