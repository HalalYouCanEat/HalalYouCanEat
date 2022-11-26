class RestaurantsController < ApplicationController
  require 'net/http'
  include Filterable
  before_action :set_restaurant, only: %i[ show edit update destroy ]

  # GET /restaurants or /restaurants.json
  def index
    try_out = Net::HTTP.get_response('halal-you-can-eat.herokuapp.com','/api/v1/restaurants')
    @restaurants = JSON.parse(try_out.body)  
    # have the restaurants ordered by descending rating by default
    # @restaurants = Restaurant.all.order(rating: :desc)
  end

  def search
    @restaurants = Restaurant.where('name LIKE ?', "%#{params[:name]}%")
    # only filter by cuisine if cuisine is present
    if params[:cuisine].present?
      @restaurants = @restaurants.and(Restaurant.where('cuisine IN (?)', params[:cuisine]))
    end
    if params[:city].present?
      @restaurants = @restaurants.and(Restaurant.where('city LIKE ?', "%#{params[:city]}%"))
    end
    @restaurants = @restaurants.order(rating: :desc)
    render :index
  end

  # GET /restaurants/1 or /restaurants/1.json
  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.paginate(page: params[:page])
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit; end

  # POST /restaurants or /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to restaurant_url(@restaurant), notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1 or /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to restaurant_url(@restaurant), notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1 or /restaurants/1.json
  def destroy
    @restaurant.destroy

    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def list
    # filtering by name and ordering it by param column and direction (not used at the moment)
    restaurants = filter!(Restaurant)
    render :_restaurant, locals: { restaurants: restaurants }
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(:id, :location_id, :name)
  end
end
