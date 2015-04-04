class RestaurantsController < ApplicationController
  #before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    if params[:search]
      @restaurants = Restaurant.search(params[:search]).order("created_at DESC")

    else
      @restaurants = Restaurant.order("created_at DESC")
    end
  end


# GET /restaurants/1
# GET /restaurants/1.json

  def show
    @restaurant = Restaurant.find(params[:id]) if params[:id].present?
    p "aaaaaaaaaaaaaaaaa", @restaurant.menu
  end

# GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

# GET /restaurants/1/edit
  def edit
    @restaurant = Restaurant.find(params[:id]) if params[:id].present?
  end

# POST /restaurants
# POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, :notice => 'Restaurant was successfully created.' }
        format.json { render :show, :status => :created, :location => @restaurant }
      else
        format.html { render :new }
        format.json { render :json => @restaurant.errors, :status => :unprocessable_entity }
      end
    end
  end

# PATCH/PUT /restaurants/1
# PATCH/PUT /restaurants/1.json
  def update
    @restaurant = Restaurant.find(params[:id]) if params[:id].present?
    respond_to do |format|
      if @restaurant.update_attributes(restaurant_params)
        format.html { redirect_to @restaurant, :notice => 'Restaurant was successfully updated.' }
        format.json { render :show, :status => :ok, :location => @restaurant }
      else
        format.html { render :edit }
        format.json { render :json => @restaurant.errors, :status => :unprocessable_entity }
      end
    end
  end

# DELETE /restaurants/1
# DELETE /restaurants/1.json
  def destroy
    @restaurant = Restaurant.find(params[:id]) if params[:id].present?
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, :notice => 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :picture, :address, :lowprice, :highprice, :menu, :menu_attributes => [:title, :picture, :appetizer_1, :appetizer_2, :appetizer_3, :appetizer_4, :appetizer_5, :appetizer_6, :appetizer_7, :appetizer_8,
                                                                                                                     :maincourse_1, :maincourse_2, :maincourse_3, :maincourse_4, :maincourse_5, :maincourse_6, :maincourse_7, :maincourse_8, :dessert_1, :dessert_2, :dessert_3, :dessert_4, :dessert_5, :dessert_6, :dessert_7, :dessert_8, :drinks_1, :drinks_2, :drinks_3, :restaurant_id, :created_at, :updated_at])
  end
end

