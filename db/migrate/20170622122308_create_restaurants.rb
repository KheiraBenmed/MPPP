class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :chef
      t.text :description
      t.string :address
      t.float :average_rating

      t.timestamps
    end
  end
end
