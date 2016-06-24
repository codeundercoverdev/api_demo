class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  puts "LARGER MAIN APPLICATION CONTROLLER"
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :print_request
  def print_request
  	puts "the request form is #{request.format}"
  	puts "the request full path is #{request.original_fullpath}"
  	puts "request starts with api: #{request.original_fullpath.start_with?('/api')}"
  end

  protect_from_forgery with: :exception, if: Proc.new { |c| !c.request.original_fullpath.start_with?('/api') }
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.original_fullpath.start_with?('/api') }

  #   protect_from_forgery with: :exception, if: Proc.new { |c| puts("1  c.request.format is #{c.request.format}") }
  # protect_from_forgery with: :null_session, if: Proc.new { |c| puts("2  c.request.format is #{c.request.format}")}
end
