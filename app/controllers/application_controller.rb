class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	layout :set_layouts
	# define layout
	def set_layouts
		if user_signed_in?
			'app/app'
		else
			'web/web'
		end
	end

  private
  # Overwriting the sign_out redirect path method
  def after_sign_in_path_for(resource_or_scope)
    dashboard_path
  end
end
