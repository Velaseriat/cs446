class CreateFiledownloads < ActiveRecord::Migration
  def change
    create_table :filedownloads do |t|
      t.integer :user_id
      t.integer :fileupload_id

      t.timestamps
    end
  end
end
