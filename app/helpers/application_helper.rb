module ApplicationHelper

	def client
		 client = Soundcloud.new(:client_id => ENV["CLIENT_ID"],
                    		     :client_secret => ENV["CLIENT_SECRET"])
	end

end
