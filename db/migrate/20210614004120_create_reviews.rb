class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :public_shower_id
      t.integer :private_shower_id
      t.integer :host_id
      t.string :body
      t.string :title
      t.decimal :rating
      t.boolean :flagged?
      t.timestamps
    end
  end
end
