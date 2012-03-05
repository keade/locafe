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
	    t.float	:latitude
	    t.float	:longitude
	    t.string	:slug
	    t.integer	:user_id

      t.timestamps
    end
	add_index :locations, [:user_id, :created_at]
  end
	
	def self.down
		drop.table :locations
	end	
end