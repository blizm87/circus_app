class AddCarIdToClowns < ActiveRecord::Migration[5.0]
  def change
    add_column :clowns, :car_id, :integer
  end
end
