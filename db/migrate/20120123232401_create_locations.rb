class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :url
      t.boolean :gluten
      t.boolean :dog
      t.boolean :wifi
      t.boolean :delivery

      t.timestamps
    end
  end
end
