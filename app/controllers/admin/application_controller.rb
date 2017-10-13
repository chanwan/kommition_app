class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	before_filter :verify_admin
	private
	def verify_admin
		redirect_to root_url unless current_user.try(:admin?)
	end
	
	private
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :surname, :last_name])
	end
end
