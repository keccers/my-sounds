class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.belongs_to :sound
    	t.text :title
    	t.text :artist
    	t.text :url
    	t.text :artwork
    end
  end
end
