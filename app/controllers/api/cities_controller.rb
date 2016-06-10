class Api::CitiesController < Api::ApplicationController
	def boston
		city = City.first
		render json: city
	end
end
