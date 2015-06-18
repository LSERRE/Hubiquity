class VisiterController < ApplicationController
	def add
		user_id = current_user.id
		visit = Visit.find(params[:visit_id])
		requester_id = visit.requester.id
		@relation = Visiter.create(user_id: user_id, requester_id: requester_id, visit_id: params[:visit_id], visitDate: params[:visitDate], visitTime: params[:visitTime], confirmed: "pending")
		@relation.save

		notification = Notification.new(sender_id: user_id, receiver_id: requester_id, notification_type: "offer", read: false)
		notification.save

		redirect_to visit_index_path
	end

	def accept
		visiter = Visiter.find(params[:visiter_id])
		sender_id = visiter.requester_id
		receiver_id = visiter.visiter.id
		visiter.confirmed = 'accepted'
		visiter.save

		notification = Notification.new(sender_id: sender_id, receiver_id: receiver_id, notification_type: "accepted", read: false)
		notification.save

		redirect_to dashboard_path
	end

	def refuse
		visiter = Visiter.find(params[:visiter_id])
		sender_id = visiter.requester_id
		receiver_id = visiter.visiter.id
		visiter.confirmed = 'refused'
		visiter.save

		notification = Notification.new(sender_id: sender_id, receiver_id: receiver_id, notification_type: "refused", read: false)
		notification.save

		redirect_to dashboard_path
	end	

	def destroy
		visiter = Visiter.find(params[:id])

	    visit = Visit.find(visiter.visit.id)
	    
	    visiters = Visiter.where(visit_id: visit.id)
	    visiters.each do |visiter|
	    	visiter.destroy
	    end
	   	visit.destroy
	    redirect_to dashboard_path, :notice => "Your visit has been deleted"
  	end
end
