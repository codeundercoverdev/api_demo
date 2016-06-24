class ApiCitiesController < ApplicationController
	include ApplicationHelper
	before_action :authenticate_api_user!, if: :api_request?
	before_action :authenticate_user!, if: :web_request?

	def boston
		puts "the current user is #{current_api_user.inspect}"
		city = City.first
		render json: city
	end


	def create
		a = params #returns ruby hash of params
		if a[:city][:name] != "Detroit"
			puts "not in detroit"
		else
			puts "we are in detroit... why?"
		end





		@city = City.new(city_params)
		if @city.save
			render json: @city
		else
			head 422
		end
	end

	private

	def city_params
		params.require(:city).permit(:name, :state)
	end

end
