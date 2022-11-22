class InsectsController < ApplicationController
  before_action :authenticate_user!, except: [:api_index, :index, :show]
  def index
    @insects = Insect.all
  end

  def show
    set_insect
  end

  def new
    @insect = Insect.new
  end

  def create
    @insect = Insect.new(insect_params)
    @insect.user = current_user
    if @insect.save
      redirect_to insect_path(@insect)
    else
      render :new, status: :unprocessable_entity
    end
    raise
  end

  def destroy
    set_insect
    @insect.destroy
    redirect_to insects_path

  def api_index
    render json: { data: Insect.all.each_with_object([]) { |obj, arr| arr << obj.as_json } }

  end

  private

  def set_insect
    @insect = Insect.find(params[:id])
  end

  def insect_params
    params.require(:insect).permit(:name, :description, :photo)
  end
end
