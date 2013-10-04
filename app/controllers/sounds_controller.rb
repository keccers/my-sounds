class SoundsController < ApplicationController
	include ApplicationHelper

	def new

	end

  def create
   	sc_data = client.get("/users/#{params['sound']['username']}")
   	track_data = client.get("/users/#{params['sound']['username']}/tracks")
		@sound = Sound.create_new_sound(sc_data)
		@tracks = @sound.tracks.create_new_tracks(track_data, @sound.id)
		get_embeds(@tracks)

	  redirect_to @sound
	end

	def show
		@sound = Sound.find(params[:id])
	end

end
