class CreateFileuploads < ActiveRecord::Migration
  def change
    create_table :fileuploads do |t|
      t.integer :user_id
      t.string :filename

      t.timestamps
    end
  end
end
