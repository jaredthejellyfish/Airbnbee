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
    if @insect.save
      redirect_to insect_path(@insect)
    else
      render :new
    end
  end

  private

  def set_insect
    @insect = Insect.find(params[:id])
  end

  def insect_params
    params.require(:insect).permit(:name, :description, :img_url)
  end

end
