class VisiterController < ApplicationController
	def add
		user_id = current_user.id

		visit = Visit.find(params[:visit_id])
		requester_id = visit.requester.id
		@relation = Visiter.create(user_id: user_id, requester_id: requester_id, visit_id: params[:visit_id], visitDate: params[:visitDate], visitTime: params[:visitTime], confirmed: "pending")
		@relation.save
		redirect_to visit_index_path
	end

	def accept
		visiter = Visiter.find(params[:visiter_id])
		visiter.confirmed = 'accepted'
		visiter.save
		redirect_to dashboard_path
	end

	def refuse
		visiter = Visiter.find(params[:visiter_id])
		visiter.confirmed = 'refused'
		visiter.save
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
