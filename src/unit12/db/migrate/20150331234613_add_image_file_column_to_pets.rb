class AddImageFileColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :image_file, :string
  end
end
