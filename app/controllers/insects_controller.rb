class InsectsController < ApplicationController

  def index
    @insects = Insect.all
  end

  def show
    set_insect
  end


  private

  def set_insect
    @insect = Insect.find(params[:id])
  end

  def insect_params
    params.require(:insect).permit(:name, :description, :user_id)
  end

end
