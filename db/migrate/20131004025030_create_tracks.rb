class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.belongs_to :sound
    	t.string :title
    	t.string :artist
    	t.string :url
    	t.text :artwork
    end
  end
end
