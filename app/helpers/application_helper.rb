module ApplicationHelper
	def api_request?
		puts "in yo yo yo"
		puts "request is #{request.original_fullpath}"
		request.original_fullpath.start_with?('/api')
	end

	def web_request?
		!request.original_fullpath.start_with?('/api')
	end
end
