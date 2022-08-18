class CreateDogListings < ActiveRecord::Migration[7.0]
  def change
    create_table :dog_listings do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.integer :weight
      t.integer :price
      t.string :seller_email

      t.timestamps
    end
  end
end
