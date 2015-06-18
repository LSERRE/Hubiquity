class VisitersController < ApplicationController
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
