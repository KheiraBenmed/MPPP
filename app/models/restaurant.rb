class Restaurant < ApplicationRecord
  belongs_to :users
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  validates :name, presence: true
  # validates :chef, presence: true
  validates :address, presence: true
  validates :description, presence: true
  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :average_rating, inclusion: { in: RATINGS }, :allow_nil => true
end
