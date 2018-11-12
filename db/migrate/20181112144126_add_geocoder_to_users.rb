class AddGeocoderToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float

    add_index :users, :latitude
    add_index :users, :longitude
  end
end
