class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
    	t.text  :username
    	t.text  :avatar
    	t.text  :full_name
    	t.text  :city
    	t.text  :description
    	t.integer :favorites
    end
  end
end
