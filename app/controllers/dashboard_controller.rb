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
		
		@user_reviews = []
		@reviews = Review.all
		@reviews.each_with_index do |review, index|
			if review.visiter.requester_id == current_user.id
				@user_reviews[index] = review
			end
		end

		@notifications = Notification.where( receiver_id: current_user.id ).order(created_at: :desc)
		@notifications_unread = Notification.where( receiver_id: current_user.id , read: false)

		render 'dashboard/index'

		@notifications_unread.each do |notification|
			notification.read = true
			notification.save
		end
	end
end
