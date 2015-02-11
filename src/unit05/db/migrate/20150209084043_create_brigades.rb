class CreateBrigades < ActiveRecord::Migration
  def change
    create_table :brigades do |t|
      t.string :name

      t.timestamps
    end
  end
end
