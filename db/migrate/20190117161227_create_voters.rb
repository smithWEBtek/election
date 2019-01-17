class CreateVoters < ActiveRecord::Migration[5.2]
  def change
    create_table :voters do |t|
			t.string :first_name
			t.string :last_name
			t.string :email
			t.string :gender
			t.string :party
			t.boolean :registered

      t.timestamps
    end
  end
end
