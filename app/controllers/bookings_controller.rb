class BookingsController < ApplicationController
  before_action :set_insect, only: %i[index new create show]
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @user = current_user
  end

  def show
    @user = current_user
  end

  def new
    @booking = Booking.new
    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.insect = @insect
    if @booking.save
      redirect_to insect_path(@insect)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to insect_path(@insect)
  end

  def destroy
    @booking.destroy
    redirect_to insects_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :insect_id)
  end

  def set_insect
    @insect = Insect.find(params[:insect_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
