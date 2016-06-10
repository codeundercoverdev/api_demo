class Api::ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  print "api controller"
  protect_from_forgery with: :null_session
end
