class Api::SessionsController < DeviseTokenAuth::SessionsController

	def create
		puts "IN THE RIGHT CONTROLLER"
		super
	end

	def edit
		super
	end



end
