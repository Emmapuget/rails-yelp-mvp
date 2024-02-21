class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save!
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurants = Restaurant.find(params[:id])
  end

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
