class RemovePhotoToRestaurant < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :photo, :string
  end
end
