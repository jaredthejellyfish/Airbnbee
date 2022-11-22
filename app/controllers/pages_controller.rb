class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @insects = Insect.all
  end
end
