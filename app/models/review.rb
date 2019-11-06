class Review < ApplicationRecord
  # A review must have a parent restaurant.
  # A review must have content and a rating. The rating should be a number between 0 and 5.
  belongs_to :restaurant

  #VALIDATIONS
  validates :restaurant_id, presence: :true
  validates :content, presence: :true
  validates :rating, presence: :true

  validates :rating, numericality: { integer: :true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
