class CreatePaseadores < ActiveRecord::Migration[5.2]
  def change
    create_table :paseadores do |t|
      t.string :name
      t.integer :number
      t.string :schedule
    end
  end
end
