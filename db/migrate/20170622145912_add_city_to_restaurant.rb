class AddCityToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :city, :string
  end
end
