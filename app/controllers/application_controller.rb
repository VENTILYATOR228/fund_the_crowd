class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :user_signed_in?, :current_user, :user_session
  before_action :set_theme

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end

def set_theme
  if params[:theme].present?
    theme = params[:theme].to_sym
    # session[:theme] = theme
    cookies[:theme] = theme
    redirect_to(request.referrer || root_path)
  end
end
