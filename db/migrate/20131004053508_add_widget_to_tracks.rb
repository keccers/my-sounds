class AddWidgetToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :widget, :text
  end
end
