class AddCircusIdToClowns < ActiveRecord::Migration[5.0]
  def change
    add_column :clowns, :circus_id, :integer
  end
end
