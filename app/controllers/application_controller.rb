class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	before_filter :authenticate_user!

      # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :firstname, :lastname, :avatar) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :current_password, :firstname, :lastname, :bio, :telephone, :avatar, :default_city, :password, :password_confirmation) }
    end

  	def after_sign_in_path_for(resource)
  		dashboard_path
    end

end
