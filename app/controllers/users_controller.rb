class UsersController < ApplicationController
  def show
    @user = current_user
    raise
  end

  def edit
    @user = current_user

  end

  def update

  end


end
