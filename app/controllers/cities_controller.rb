class CitiesController < ApplicationController
	include ApplicationHelper
	before_action :authenticate_api_user!, if: :api_request?
	before_action :authenticate_user!, if: :web_request?


	def new_york
		@city = City.new
		# render text: "we are in new york"
	end

	def boston
		puts "the current user is #{current_api_user.inspect}"
		puts "in main cities controller boston action"
		render json: City.first
	end

	def create
		puts "yolo #{params[:city]}"
		@city = City.new(city_params)
		@city.save
		render 'new_york'
	end

	private

	def city_params
		params.require(:city).permit(:name, :state)
	end
end
 