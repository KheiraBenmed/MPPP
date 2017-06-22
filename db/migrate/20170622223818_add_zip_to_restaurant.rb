class AddZipToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :zip, :string
  end
end
