class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :status, default: 'pending'
      t.integer :from_user_id
      t.integer :to_user_id
      t.text :instructions
      t.string :picture_url

      t.timestamps
    end

    add_index :matches, :from_user_id
    add_index :matches, :to_user_id
  end
end
