class RestaurantsController < ApplicationController
	include Filterable
  before_action :set_restaurant, only: %i[ show edit update destroy ]
	# before_action :set_search

  # GET /restaurants or /restaurants.json
  def index
		puts "*********"
		puts params[:q]
		@q = Restaurant.ransack(params[:q])
		puts "*********"
		puts @q.inspect
		@restaurants = @q.result(distinct: true)
		puts "*********"
		puts @restaurants.inspect
		@restaurants = @restaurants.paginate(page: params[:page], per_page: 10)
		# @restaurants = Restaurant.all
    # @restaurants = @q.result(distinct: true).paginate(page: params[:page], per_page: 10)
  end

	def search
    index
    render :index
  end

  # GET /restaurants/1 or /restaurants/1.json
  def show
		@restaurant = Restaurant.find(params[:id])
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants or /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to restaurant_url(@restaurant), notice: "Restaurant was successfully created." }
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
        format.html { redirect_to restaurant_url(@restaurant), notice: "Restaurant was successfully updated." }
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
      format.html { redirect_to restaurants_url, notice: "Restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

	def list
		# filtering by name and ordering it by param column and direction
		restaurants = filter!(Restaurant)
		# restaurants = Restaurant.includes(:name)
  	# restaurants = restaurants.where('name ilike ?', "%#{params[:name]}%") if params[:name].present?
  	# restaurants = restaurants.order("#{params[:column]} #{params[:direction]}")
		render :_restaurant, locals: { restaurants: restaurants }
	end
		# restaurants = restaurants.where('restaurants.name ilike ?', "%#{session['filters']['name']}%") if session['filters']['name'].present?
		# restaurants = restaurants.order("#{session['filters']['column']} #{session['filters']['direction']}")
		
		# rendering the index for restaurants
		# render :_index, locals: { restaurants: restaurants }
	

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.require(:restaurant).permit(:id, :location_id, :name)
    end

		def filter_params
			params.permit(:name, :column, :direction)
		end
end
