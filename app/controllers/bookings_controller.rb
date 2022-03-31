class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :show]
  before_action :set_e_scooter, only: [:new, :create]

  def index
    if current_user.owner == true
      @bookings = Booking.where(e_scooter_id: current_user.e_scooter_ids)
    else
      @bookings = Booking.where(user_id: current_user.id)
    end
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.e_scooter = @e_scooter
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @e_scooter = EScooter.find(@booking.e_scooter_id)
    @booking.destroy
    redirect_to e_scooter_path(@e_scooter)
  end

  private

  def set_e_scooter
    @e_scooter = EScooter.find(params[:e_scooter_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date)
  end
end
