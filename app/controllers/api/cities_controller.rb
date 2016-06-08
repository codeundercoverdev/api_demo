
module Api
	class CitiesController < ApplicationController
		def boston
			render text: "boston yeah"
		end
	end
end