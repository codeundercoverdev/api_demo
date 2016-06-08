class Api::CitiesController < ApplicationController
	def boston
		city = City.first
		render json: city
	end
end
