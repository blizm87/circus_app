class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :year
      t.integer :capacity

      t.timestamps
    end
  end
end
