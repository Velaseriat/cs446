class CreateHomebases < ActiveRecord::Migration
  def change
    create_table :homebases do |t|
      t.string :name

      t.timestamps
    end
  end
end
