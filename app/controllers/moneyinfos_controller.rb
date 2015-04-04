class MoneyinfosController < ApplicationController
  before_action :set_moneyinfo, only: [:show, :edit, :update, :destroy]

  # GET /moneyinfos
  # GET /moneyinfos.json
  def index
    @moneyinfos = Moneyinfo.all
  end

  # GET /moneyinfos/1
  # GET /moneyinfos/1.json
  def show
  end

  # GET /moneyinfos/new
  def new
    @moneyinfo = Moneyinfo.new
  end

  # GET /moneyinfos/1/edit
  def edit
  end

  # POST /moneyinfos
  # POST /moneyinfos.json
  def create
    @moneyinfo = Moneyinfo.new(moneyinfo_params)

    respond_to do |format|
      if @moneyinfo.save
        format.html { redirect_to @moneyinfo, notice: 'Moneyinfo was successfully created.' }
        format.json { render :show, status: :created, location: @moneyinfo }
      else
        format.html { render :new }
        format.json { render json: @moneyinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moneyinfos/1
  # PATCH/PUT /moneyinfos/1.json
  def update
    respond_to do |format|
      if @moneyinfo.update(moneyinfo_params)
        format.html { redirect_to @moneyinfo, notice: 'Moneyinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @moneyinfo }
      else
        format.html { render :edit }
        format.json { render json: @moneyinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moneyinfos/1
  # DELETE /moneyinfos/1.json
  def destroy
    @moneyinfo.destroy
    respond_to do |format|
      format.html { redirect_to moneyinfos_url, notice: 'Moneyinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moneyinfo
      @moneyinfo = Moneyinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moneyinfo_params
      params.require(:moneyinfo).permit(:startdate, :paymenttype, :user_id)
    end
end
