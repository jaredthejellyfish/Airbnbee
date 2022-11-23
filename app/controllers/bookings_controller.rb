class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create]

  def all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :insect_id, :start_date, :end_date, :rating, :review)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
