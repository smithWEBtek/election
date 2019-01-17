class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
			t.string :lat
			t.string :lng
			t.string :number
			t.string :street
			t.string :unit
			t.string :city
			t.string :zipcode
			t.string :district
			t.string :region

      t.timestamps
    end
  end
end
