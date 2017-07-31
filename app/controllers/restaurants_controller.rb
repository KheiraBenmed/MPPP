class RestaurantsController < ApplicationController
 before_action :set_restaurant, only: [:show, :edit, :update, :destroy ]

  def new
    @restaurant = Restaurant.new
  end

  def index
    if params[:search] && params[:search] != ""
      @restaurants = Restaurant.near(params[:search],2)
    else
    @restaurants = Restaurant.where.not(latitude: nil, longitude: nil)
  end
    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      marker.json({id: restaurant.id})
      marker.picture({
        url: ActionController::Base.helpers.image_path('mark.png'),
        width:  50,
        height: 50
      })
      marker.infowindow render_to_string(partial: "pages/restaurant_map_box", locals: { restaurant: restaurant })
    end
  end

  def show
    @booking = Booking.new
    @hash = Gmaps4rails.build_markers(@restaurant) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      marker.infowindow render_to_string(partial: "pages/restaurant_map_box", locals: { restaurant: restaurant })
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
   end

   def restaurants_params
    params.require(:restaurant).permit(:name, :description, :address, :zip, :city, :chef, :average_rating, :phone)
   end

end
