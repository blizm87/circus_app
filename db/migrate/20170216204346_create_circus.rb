class CreateCircus < ActiveRecord::Migration[5.0]
  def change
    create_table :circus do |t|
      t.string :location
      t.date :starts_on
      t.date :ends_on
      t.integer :num_of_tix

      t.timestamps
    end
  end
end
