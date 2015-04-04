class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    if @current_user.admin?
    @bookings = Booking.all
      else
    @bookings = @current_user.bookings
      end
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    bookings = []
    @booking = Booking.new(booking_params)
    @booking.bdateMade = Date.today();
    @booking.numofpeople = params[:booking][:numofpeople].to_i

    restaurant = Restaurant.find(params[:booking][:restaurant_id]) if params[:booking][:restaurant_id].present?
    if restaurant.present?
    bookings = restaurant.bookings.where(:bstime => params[:booking][:bstime], :beventdate => params[:booking][:beventdate].to_date)
    end

    total_people = 0
    bookings.each do |b|
      total_people = total_people + b.numofpeople
    end
    total_people = total_people + @booking.numofpeople
    # you even don't need bdateMade when you have created_at available. Why don't you use it?
    if bookings.count < 4 && total_people <= 20
      respond_to do |format|
        if @booking.save
	      UserMailer.booking_confirmation(@booking, restaurant, @current_user).deliver
          format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
          format.json { render :show, status: :created, location: @booking }
        else
          format.html { render :new }
          format.json { render json: @booking.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:error] = "Tables are full at this time, Try Another Time !"
      respond_to do |format|
        format.html { redirect_to new_booking_path, error: 'Tables are full at this time, Try Another Time !' }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:bdateMade, :numofpeople, :beventdate, :beventtype, :bstime, :bcompleted, :active_status, :user_id, :restaurant_id, :catering_id)
    end
	
	def booking_
end
end