class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :filedownload_id
      t.string :data

      t.timestamps
    end
  end
end
