class CateringsController < ApplicationController
  before_action :set_catering, only: [:show, :edit, :update, :destroy]

  # GET /caterings
  # GET /caterings.json
  def index
    if params[:search]
      @caterings = Catering.search(params[:search]).order("created_at DESC")
    else
      @caterings = Catering.order("created_at DESC")
    end
  end


  # GET /caterings/1
  # GET /caterings/1.json
  def show
  end

  # GET /caterings/new
  def new
    @catering = Catering.new
  end

  # GET /caterings/1/edit
  def edit
  end

  # POST /caterings
  # POST /caterings.json
  def create
    @catering = Catering.new(catering_params)

    respond_to do |format|
      if @catering.save
        format.html { redirect_to @catering, notice: 'Catering was successfully created.' }
        format.json { render :show, status: :created, location: @catering }
      else
        format.html { render :new }
        format.json { render json: @catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caterings/1
  # PATCH/PUT /caterings/1.json
  def update
    respond_to do |format|
      if @catering.update(catering_params)
        format.html { redirect_to @catering, notice: 'Catering was successfully updated.' }
        format.json { render :show, status: :ok, location: @catering }
      else
        format.html { render :edit }
        format.json { render json: @catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caterings/1
  # DELETE /caterings/1.json
  def destroy
    @catering.destroy
    respond_to do |format|
      format.html { redirect_to caterings_url, notice: 'Catering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_catering
    @catering = Catering.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def catering_params
    params.require(:catering).permit(:name, :picture, :lowprice, :highprice, :menu)
  end
end

