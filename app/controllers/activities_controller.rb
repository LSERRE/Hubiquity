class ActivitiesController < ApplicationController
	def index
	  	@all_activities = PublicActivity::Activity.order("created_at desc").where(owner_id: current_user, owner_type: "User")
	  	puts @all_activities
	  	@all_activities.each do |activity|
	  		if activity.trackable_type = "Visiter"
	
	  		else
	
	  		end
	  	end
	end
end
