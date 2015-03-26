class AddPetTypeToPets < ActiveRecord::Migration
  def change
  	add_column :pets, :pet_type, :integer
  end
end
