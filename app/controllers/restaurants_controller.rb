class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create

    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def show
    set_restaurant
  end

  def index
    @restaurants = Restaurant.all
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
