class Api::CitiesController < Api::ApplicationController
	def boston
		city = City.first
		render json: city
	end


	def create
		puts "yolo #{params[:city]}"
		@city = City.new(city_params)
		if @city.save
			head 200
		else
			head 422
		end
	end

	private

	def city_params
		params.require(:city).permit(:name, :state)
	end

end
