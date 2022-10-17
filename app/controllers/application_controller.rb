#class SessionsController < Devise::SessionsController

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    "/user/#{current_user.id}"
  end

protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  def destroy
    super
    session[:keep_signed_out] = true
  end
end
