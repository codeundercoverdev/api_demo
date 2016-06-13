class CitiesController < ApplicationController
	def new_york
		@city1 = City.new
		# render text: "we are in new york"
	end

	def boston
		render text: "boston yeah"
	end

	def create
	end
end
 