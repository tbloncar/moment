class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.attachment :image
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.datetime :time
      t.text :description
      t.integer :favorite_count, default: 0
      t.string :address
      t.string :city
      t.string :state
      t.string :state_code
      t.string :postal_code
      t.string :country
      t.string :country_code

      t.timestamps
    end
  end
end
