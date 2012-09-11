class AddDescriptionToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :description, :text
    add_column :rooms, :image_url, :text
  end
end
