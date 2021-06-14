class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.decimal :reputation
      t.string :gender
      t.boolean :flagged?
      t.string :mp_username
      
      t.timestamps
    end
  end
end
