class Hotel < ApplicationRecord
  has_many :apparels

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  has_one_attached :photo
end
