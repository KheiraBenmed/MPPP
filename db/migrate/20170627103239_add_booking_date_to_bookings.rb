class AddBookingDateToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :booking_date, :datetime
  end
end
