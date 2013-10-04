class AddScIdToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :soundcloud_id, :integer
  end
end
