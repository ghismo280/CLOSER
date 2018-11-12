class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password,
      :password_confirmation, :birthdate, :remember_me, :photo, :photo_cache, :remove_photo, :latitude, :longitude) }

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password,
      :password_confirmation, :birthdate, :current_password, :photo, :photo_cache, :remove_photo, :latitude, :longitude) }
  end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || profiles_path
  end

end
