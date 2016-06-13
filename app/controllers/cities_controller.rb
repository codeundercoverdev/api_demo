class CitiesController < ApplicationController
	def new_york
		@city = City.new
		# render text: "we are in new york"
	end

	def boston
		render text: "boston yeah"
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
 