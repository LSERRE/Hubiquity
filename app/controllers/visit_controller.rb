class VisitController < ApplicationController

	def index
		@visits = Visit.all.limit(20).order('created_at DESC')
	end

	def new
		if params.present?
			@visit = Visit.new(city: params[:visit][:city], visitDate1: params[:visit][:visitDate1], visitTime1: params[:visit][:visitTime1], surface: params[:visit][:surface])
		else
			@visit = Visi.new
		end
	end

	def create
		@visit = Visit.new
		if(Visit.new(post_params).valid?)
			params = post_params
			@visit = Visit.new(post_params)
			@visit[:user_id] = current_user.id
			if @visit.save
				flash[:success] = "Visit Created"
				redirect_to @visit
			else
				flash[:error] = "Error in the database"
				render :new
			end
		else
			render :new
			flash[:error] = "Error"
		end
	end

	def show
		@visit = Visit.find(params[:id])
	end

	def destroy
		@visit = Visit.find(params[:id])
		@visit.delete
		redirect_to visits_path
	end

	private
	def post_params
		params.require(:visit).permit(:adress, :zipcode, :city, :country, :surface, :agentName, :agencyName, :telephone, :visitDate1, :visitTime1, :visitDate2, :visitTime2, :visitDate3, :visitTime3, :wholesomnessRate, :question1, :question2, :question3, :question4)
	end

end
