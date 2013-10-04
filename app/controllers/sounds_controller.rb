class SoundsController < ApplicationController
	include ApplicationHelper

	def new

	end

  def create
  	user = params['sound']['username']
   	sc_data = client.get("/users/#{user}")
		@sound = Sound.create(
			username:    sc_data['username'],
			avatar:      sc_data['avatar_url'],
			full_name:   sc_data['full_name'],
			city:        sc_data['city'],
			description: sc_data['description'],
    	favorites:  sc_data['public_favorites_count	']
			)
	  redirect_to @sound
	end

	def show
		@sound = Sound.find(params[:id])
	end

end
