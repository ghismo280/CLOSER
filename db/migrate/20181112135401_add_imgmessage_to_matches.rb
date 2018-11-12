class AddImgmessageToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :imgmessage, :string
  end
end
