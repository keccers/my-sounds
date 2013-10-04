class Track < ActiveRecord::Base
	belongs_to :sound

	def self.create_new_tracks(track_data, sound_id)
		tracks =[]
		track_data.each do |track|
			tracks << Track.create(
				sound_id: sound_id,
				soundcloud_id: track.id, 
				title: track.title, 
				url:   track.permalink_url,
				stream_url: track.stream_url,
				artwork: track.artwork_url
				)
		end
		tracks
	end

end