class InsectsController < ApplicationController


  private

  def set_insect
    @insect = Insect.find(params[:id])
  end

  def insect_params
    params.require(:insect).permit(:name, :description, :user_id)
  end

end
