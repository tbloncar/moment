class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.attachment :image
      t.integer :user_id
      t.decimal :latitude
      t.decimal :longitude
      t.datetime :time
      t.text :description
      t.integer :favorite_count, default: 0

      t.timestamps
    end
  end
end
