class RestaurantsController < ApplicationController
 before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @booking = Booking.new
    # @hash = Gmaps4rails.build_markers(@cow) do |cow, marker|
    #   marker.lat cow.latitude
    #   marker.lng cow.longitude
    #   marker.infowindow render_to_string(partial: "pages/cow_map_box", locals: { cow: cow })
    # end
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
    params.require(:restaurant).permit(:name, :description, :chef, :rating)
   end

end
