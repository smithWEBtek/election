class CreateVoters < ActiveRecord::Migration[5.2]
  def change
    create_table :voters do |t|
			t.string :first_name
			t.string :last_name
			t.string :email
			t.string :phone
			t.string :gender
			t.string :age
			t.string :party
			t.boolean :registered
			t.string :vote_preference
			t.string :street_number
			t.string :street_name
			t.string :unit
			t.string :city
			t.string :state
			t.string :postal_code

      t.timestamps
    end
  end
end
