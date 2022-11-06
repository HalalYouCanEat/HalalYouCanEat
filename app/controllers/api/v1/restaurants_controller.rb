class Api::V1::RestaurantsController < ApplicationController
  def index
    restaurant = Restaurant.all
    render json: restaurant, status:200
  end

  def show
    restaurant = Restaurant.find_by(id: params[:id])
    if restaurant
      render json: restaurant, status: 200
    else
      render json: {error: "Not Found"}
    end
  end

  def create
    restaurant = Restaurant.new(
      id: rest_params[:id],
      name: rest_params[:name],
      cuisine: rest_params[:cuisine],
      state: rest_params[:state],
      zipcode: rest_params[:zipcode],
      address: rest_params[:address],
      latitude: rest_params[:latitude],
      longitude: rest_params[:longitude],
      url: rest_params[:url],
      rating: rest_params[:rating]
    )
    if restaurant.save
      render json: restaurant, status: 200
    else
      render json: {error: "Restaurant not create"}
    end
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to restaurant_url(@restaurant), notice: "Restaurant was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def rest_params
    params.require(:restaurant).permit([:id, :name, :cuisine, :state, :zipcode, :address, :latitude, :longitude, :url, :rating
    ])
  end
end
