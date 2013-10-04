class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
    	t.string  :username
    	t.string  :avatar
    	t.string  :full_name
    	t.string  :city
    	t.string  :description
    	t.integer :favorites

    	t.timestamps
    end
  end
end
