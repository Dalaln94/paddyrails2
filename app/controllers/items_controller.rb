class ItemsController < ApplicationController

  def index
    if params[:search]
      @items = Item.search(params[:search]).order("created_at DESC")

    else
      @items = Item.order("created_at DESC")
    end
  end


# GET /restaurants/1
# GET /restaurants/1.json

  def show
    @item = Item.find(params[:id]) if params[:id].present?
    
  end

# GET /restaurants/new
  def new
    @item = Item.new
  end

# GET /restaurants/1/edit
  def edit
    @item = Item.find(params[:id]) if params[:id].present?
  end

# POST /restaurants
# POST /restaurants.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, :notice => 'Restaurant was successfully created.' }
        format.json { render :show, :status => :created, :location => @restaurant }
      else
        format.html { render :new }
        format.json { render :json => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

# PATCH/PUT /restaurants/1
# PATCH/PUT /restaurants/1.json
  def update
    @item = Item.find(params[:id]) if params[:id].present?
    respond_to do |format|
      if @item.update_attributes(restaurant_params)
        format.html { redirect_to @item, :notice => 'Item was successfully updated.' }
        format.json { render :show, :status => :ok, :location => @item }
      else
        format.html { render :edit }
        format.json { render :json => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

# DELETE /restaurants/1
# DELETE /restaurants/1.json
  def destroy
    @item = Item.find(params[:id]) if params[:id].present?
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, :notice => 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :picture, :address, :lowprice, :highprice, :menu, :menu_attributes => [:title, :picture, :appetizer_1, :appetizer_2, :appetizer_3, :appetizer_4, :appetizer_5, :appetizer_6, :appetizer_7, :appetizer_8,
                                                                                                                     :maincourse_1, :maincourse_2, :maincourse_3, :maincourse_4, :maincourse_5, :maincourse_6, :maincourse_7, :maincourse_8, :dessert_1, :dessert_2, :dessert_3, :dessert_4, :dessert_5, :dessert_6, :dessert_7, :dessert_8, :drinks_1, :drinks_2, :drinks_3, :restaurant_id, :created_at, :updated_at])
  end
end

