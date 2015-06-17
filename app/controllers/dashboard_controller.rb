class DashboardController < ApplicationController
	def index
		@visits = Visit.where(user_id: current_user.id)
		@visiters = []
		@visits.each_with_index do |visit, index|
			@visiters[index] = []
			@visiters[index][0] = visit
			pending_visiters = Visiter.where( visit_id: visit.id, confirmed: "pending" )
			confirmed_visiters = Visiter.where( confirmed: "accepted" )
			@visiters[index][1] = pending_visiters
			@visiters[index][2] = confirmed_visiters
		end
	end
end
