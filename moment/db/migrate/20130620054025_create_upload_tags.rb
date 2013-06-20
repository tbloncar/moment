class CreateUploadTags < ActiveRecord::Migration
  def change
    create_table :upload_tags do |t|
      t.upload_id
      t.tag_id

      t.timestamps
    end
  end
end
