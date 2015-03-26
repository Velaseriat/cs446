class AddPetStatusColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :pet_status, :integer
  end
end
