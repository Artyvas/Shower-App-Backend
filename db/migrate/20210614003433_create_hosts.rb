class CreateHosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.decimal :reputation
      t.string :gender
      t.boolean :flagged?
      t.string :mp_username
      t.boolean :superhost?
      t.integer :max_bookings

      t.timestamps
    end
  end
end
