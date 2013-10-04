class SoundsController < ApplicationController
	include ApplicationHelper

	def new

	end

  def create
   	sc_data = client.get("/users/#{params['sound']['username']}")
		@sound = Sound.create_new_sound(sc_data)
	  redirect_to @sound
	end

	def show
		@sound = Sound.find(params[:id])
	end

end
