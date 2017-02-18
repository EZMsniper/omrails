class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def authenticate_admin_user!
	  raise SecurityError unless current_user.try(:admin?)
	end

  def access_denied(exception)
  	redirect_to root_path, alert: exception.message
  end
end
