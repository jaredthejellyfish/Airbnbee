class InsectsController < ApplicationController

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
  end

  private

  def set_insect
    @insect = Insect.find(params[:id])
  end

  def insect_params
    params.require(:insect).permit(:name, :description, :photo)
  end

end
