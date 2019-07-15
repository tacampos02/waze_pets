class AddPictureToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :avatar, :string
  end
end
