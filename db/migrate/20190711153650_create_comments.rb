class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :place_id
      t.string :content
      t.integer :rating
    end
  end
end