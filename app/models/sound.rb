class Sound < ActiveRecord::Base
	has_many :tracks
	
	def self.create_new_sound(sc_data)
		self.create(
			username:    sc_data['username'],
			avatar:      sc_data['avatar_url'],
			full_name:   sc_data['full_name'],
			city:        sc_data['city'],
			description: sc_data['description'],
    	favorites:  sc_data['public_favorites_count	']
			)
	end


end