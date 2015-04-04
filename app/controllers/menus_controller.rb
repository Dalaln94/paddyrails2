class MenusController < ApplicationController
  before_action :set_menu, :only => [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
    @restaurant = Restaurant.find(params[:id]) if params[:id].present?
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:title, :picture, :address, :appetizer_1, :appetizer_2, :appetizer_3, :appetizer_4, :appetizer_5, :appetizer_6, :appetizer_7, :appetizer_8, :maincourse_1, :maincourse_2, :maincourse_3, :maincourse_4, :maincourse_5, :maincourse_6, :maincourse_7, :maincourse_8, :maincourse_9, :maincourse_10, :maincourse_11, :maincourse_12, :maincourse_13, :maincourse_14, :maincourse_15, :dessert_1, :dessert_2, :dessert_3, :dessert_4, :dessert_5, :dessert_6, :dessert_7, :dessert_8, :dessert_9, :dessert_10, :drinks_1, :drinks_2, :drinks_3, :drinks_4, :drinks_5, :drinks_6, :drinks_7, :drinks_8, :restaurant_id)
    end
end
