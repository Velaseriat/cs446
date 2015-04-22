class CreateFilefantasies < ActiveRecord::Migration
  def change
    create_table :filefantasies do |t|
      t.string :name

      t.timestamps
    end
  end
end
