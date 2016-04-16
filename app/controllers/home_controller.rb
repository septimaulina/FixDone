class HomeController < ApplicationController
  	before_action :do_login 

	def index
	end

	private
  	def do_login 
  		if user_signed_in?
  			redirect_to dashboard_path
  		end
  	end
end
