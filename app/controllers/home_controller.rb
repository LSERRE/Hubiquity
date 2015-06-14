class HomeController < ApplicationController
	skip_before_filter :authenticate_user!
	def index
		@welcome = 'welcome'
	end
end
