class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :picture_url, :string
    add_column :users, :birthdate, :date
  end
end
