class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create]

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    set_user
    @booking = Booking.new
  end

  def create
    set_user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to insects_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :insect_id, :rating, :review)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
