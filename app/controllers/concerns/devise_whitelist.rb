# If something is rails specific use a controller, if it is a helper, should be used as a module

# The module name matters! The sheet name is used with capital letters for each word.
module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |keys| keys.permit(:name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) { |keys| keys.permit(:name, :email, :password, :password_confirmation, :current_password)}
  end
end