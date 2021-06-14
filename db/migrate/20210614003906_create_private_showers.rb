class CreatePrivateShowers < ActiveRecord::Migration[6.0]
  def change
    create_table :private_showers do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :price
      t.decimal :rating
      t.string :availability
      t.string :description
      t.integer :host_id
      t.boolean :active?
      t.timestamps
    end
  end
end
