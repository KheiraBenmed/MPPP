class Restaurant < ApplicationRecord
  has_many :bookings
  validates :name, presence: true
  validates :chef, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
