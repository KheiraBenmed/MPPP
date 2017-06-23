class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:restaurant_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.restaurant = Restaurant.find(params[:restaurant_id])
    @booking.status = "pending"
    if @booking.save
      redirect_to user_path(@booking.user)
    else
      render "restaurants/show"
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    if @booking.save
      redirect_to user_path(@booking.restaurant.user) #page profil user @booking.restaurant.user pour proprio restaurant, sinon @booking.user = mangeur
    end
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    if @booking.save
      redirect_to user_path(@booking.restaurant.user) #page profil user @booking.restaurant.user pour proprio restaurant, sinon @booking.user = mangeur
    end
  end

   def bookings_params
    params.require(:booking).permit(:status )
    # ajouter la date
  end

end
