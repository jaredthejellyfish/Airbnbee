class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @insects = Insect.all # all them insects (ignore me, im a comment necessary to push to Heroku, I'll be removed shortly)
  end
end
