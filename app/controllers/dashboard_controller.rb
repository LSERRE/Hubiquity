class DashboardController < ApplicationController
	def index
		@visits = Visit.where(user_id: current_user.id)

		@visiters = []
		@confirmed_visiters = Visiter.where( requester_id: current_user.id, confirmed: "accepted" )
		@visits.each_with_index do |visit, index|
			@visiters[index] = []
			@visiters[index][0] = visit
			pending_visiters = Visiter.where( visit_id: visit.id, confirmed: "pending" )
			@visiters[index][1] = pending_visiters
		end

	end
end
