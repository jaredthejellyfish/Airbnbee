class InsectsController < ApplicationController
  before_action :authenticate_user!, except: [:api_index]
  def index
    @insects = Insect.all
  end

  def show
    set_insect
  end

  def api_index
    render json: { data: Insect.all.each_with_object([]) { |obj, arr| arr << obj.as_json } }
  end

  private

  def set_insect
    @insect = Insect.find(params[:id])
  end

  def insect_params
    params.require(:insect).permit(:name, :description, :user_id)
  end
end
