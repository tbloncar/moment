class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :f_name
      t.string :l_name
      t.string :password_digest
      t.text :bio
      t.attachment :avatar
      t.string :url_path

      t.timestamps
    end
  end
end
