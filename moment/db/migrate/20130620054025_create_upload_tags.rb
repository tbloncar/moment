class CreateUploadTags < ActiveRecord::Migration
  def change
    create_table :upload_tags do |t|
      t.integer :upload_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
