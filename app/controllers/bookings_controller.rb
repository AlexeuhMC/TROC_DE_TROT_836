class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :show]
  before_action :set_e_scooter, only: [:new, :create]

  def index
    @bookings = Bookings.where(:user_id)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.e_scooter = @e_scooter

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to booking_path(@booking)
  end

  private

  def set_e_scooter
    @e_scooter = EScooter.find(params[:e_scooter_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :user_id, :e_scooter_id)
  end
end
