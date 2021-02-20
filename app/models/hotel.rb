class Hotel < ApplicationRecord
  has_many :apparels

  validates :names, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  has_one_attached :photo
end
