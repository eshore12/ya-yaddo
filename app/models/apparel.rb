class Apparel < ApplicationRecord
  belongs_to :hotel

  CATEGORIES = ['Jeans', 'Jacket', 'Shirt', 'Sweatshirt', 'Pants', 'Room Wear']

  validates :brand, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  has_many_attached :photos
end
