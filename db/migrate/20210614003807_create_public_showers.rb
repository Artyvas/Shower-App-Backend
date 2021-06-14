class CreatePublicShowers < ActiveRecord::Migration[6.0]
  def change
    create_table :public_showers do |t|
      t.string :name
      t.string :type
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :price
      t.decimal :rating
      t.string :availability
      t.string :description

      t.timestamps
    end
  end
end
