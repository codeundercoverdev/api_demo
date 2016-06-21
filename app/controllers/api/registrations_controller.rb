class Api::RegistrationsController < DeviseTokenAuth::RegistrationsController

	def create
		puts "IN THE RIGHT CONTROLLER"
		super
	end

end
