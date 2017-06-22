class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_restaurant, :boolean, default: false
  end
end
