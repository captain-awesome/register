class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_type, :first_name, :last_name, :address, :city, :state, :zip_code, :username, :email, :password, :password_confirmation, :cc_number, :cc_expiration_month, :cc_expiration_year, :pets, :smoker, :parking, :outlet, :seating, :rug, :water) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:user_type, :first_name, :last_name, :address, :city, :state, :zip_code, :username, :current_password, :cc_number, :cc_expiration_month, :cc_expiration_year, :pets, :smoker, :parking, :outlet, :seating, :rug, :water) }
  end
end
