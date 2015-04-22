class CreateFilefantasies < ActiveRecord::Migration
  def change
    create_table :filefantasies do |t|

      t.timestamps
    end
  end
end
