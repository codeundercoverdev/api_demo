class Api::ApplicationController < ActionController::Base
	puts "AAAAAAAAAAAA"
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :show_it

  def show_it
  	puts "SHOW IT SHOW IT SHOW IT"
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  puts "API CONTROLLER"
  protect_from_forgery with: :null_session
end
