module ApplicationHelper

	def client
		 client = Soundcloud.new(:client_id => ENV["CLIENT_ID"],
                    		     :client_secret => ENV["CLIENT_SECRET"])
	end

	def get_embeds(tracks)
		@embeds = []
		tracks.each do |track| 
			widget = client.get('/oembed', :url => track.url)
			track.widget = widget['html']
			track.save
		end
		@embeds
	end
end
