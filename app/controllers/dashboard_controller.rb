class DashboardController < ApplicationController
	def index
		@visits = Visit.where(user_id: current_user.id)
		@potential_visiters = []
		@confirmed_visits = []
		@visits.each do |visit|
			visiter = Visiter.where( visit_id: visit.id, confirmed: "pending" )
			@potential_visiters.push( visiter )

			confirmed = Visiter.where( visit_id: visit.id, confirmed: "confirmed" )
			@confirmed_visits.push( confirmed )
		end
	end
end
