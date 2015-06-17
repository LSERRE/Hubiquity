class ReportsController < ApplicationController
	def index
		@visits = Visit.where(user_id: current_user.id)
		@pending_visits = []
		@visits.each_with_index do |visit, index|
			@pending_visits[index] = []
			@pending_visits[index][0] = visit
			visiters = Visiter.where( visit_id: visit.id, confirmed: "pending" )
			@pending_visits[index][1] = visiters
		end

		@confirmed_visiters = Visiter.where( confirmed: "accepted" )
	end
end
