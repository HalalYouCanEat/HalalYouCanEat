class HalalItemsController < ApplicationController
  before_action :set_halal_item, only: %i[ show edit update destroy ]

  # GET /halal_items or /halal_items.json
  def index
    @halal_items = HalalItem.all
  end

  # GET /halal_items/1 or /halal_items/1.json
  def show
  end

  # GET /halal_items/new
  def new
    @halal_item = HalalItem.new
  end

  # GET /halal_items/1/edit
  def edit
  end

  # POST /halal_items or /halal_items.json
  def create
    @halal_item = HalalItem.new(halal_item_params)

    respond_to do |format|
      if @halal_item.save
        format.html { redirect_to halal_item_url(@halal_item), notice: "Halal item was successfully created." }
        format.json { render :show, status: :created, location: @halal_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @halal_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /halal_items/1 or /halal_items/1.json
  def update
    respond_to do |format|
      if @halal_item.update(halal_item_params)
        format.html { redirect_to halal_item_url(@halal_item), notice: "Halal item was successfully updated." }
        format.json { render :show, status: :ok, location: @halal_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @halal_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /halal_items/1 or /halal_items/1.json
  def destroy
    @halal_item.destroy

    respond_to do |format|
      format.html { redirect_to halal_items_url, notice: "Halal item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_halal_item
      @halal_item = HalalItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def halal_item_params
      params.require(:halal_item).permit(:id, :name, :restaurant_id, :description, :verification, :vegan, :gluten_free, :vegetarian)
    end
end
