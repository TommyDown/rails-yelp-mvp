class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :restaurant, exclusion: [nil]
  validates :rating, :inclusion => 0..5

end
