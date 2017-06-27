class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :booking_date, presence: true
  validates :status, presence: true, acceptance:  { accept: ["accepted", "declined", "pending"] }

  def validate
    self.status = "validée"
  end

end
