class ReviewController < ApplicationController
	def index
	end

	def new
		if params.has_key?(:visiter_id)
			visiter = Visiter.find(params[:visiter_id])
			@review = Review.new(visiter_id: visiter.id)
		else
			redirect_to dashboard_path
		end
	end

	def create
		params = post_params
		@review = Review.new( params )
		@review.save
		redirect_to dashboard_path
	end

	def show

	end

  	private
	def post_params
		params.require(:review).permit( :picture1_name,:picture2_name ,:picture3_name ,:picture4_name ,:picture5_name ,:picture6_name, :wholesomness_rating, :wholesomness_comment, :neighberhood_rating, :neighberhood_comment,  :brooker_rating, :brooker_comment, :furniture_rating, :furniture_comment, :bathrooms_rating, :bathrooms_comment, :light_rating, :light_comment, :noise_pollution_rating, :noise_pollution_comment, :electricity_rating, :electicity_comment, :pipework_comment, :pipework_rating, :issue1_title, :issue1_comment, :issue2_title, :issue2_comment, :answer1, :answer2, :answer3, :answer4, :conclusion, :final_rating, :review_rating, :review_comment, :picture1 , :picture2 , :picture3 , :picture4 , :picture5 , :picture6 , :issue1_picture , :issue2_picture, :picture1_file_name)
	end
end
