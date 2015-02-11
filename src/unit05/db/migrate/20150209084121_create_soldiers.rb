class CreateSoldiers < ActiveRecord::Migration
  def change
    create_table :soldiers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :atk
      t.integer :def
      t.string :paradigm
      t.integer :brigade_id

      t.timestamps
    end
  end
end
