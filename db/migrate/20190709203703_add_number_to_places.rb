class AddNumberToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :number, :string
  end
end
