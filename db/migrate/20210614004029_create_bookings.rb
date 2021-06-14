class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :host_id
      t.decimal :price
      t.boolean :paid?
      t.datetime :trip_begin
      t.datetime :trip_end
      t.datetime :date_booked
      t.timestamps
    end
  end
end
