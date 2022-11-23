class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [ :index, :show ]

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
