class SelectedPet < ActiveRecord::Base
  belongs_to :pet
  belongs_to :cart
  #validates :pet, presence: true
  #validates :cart, presence: true
  #validates :selected_pet, :uniqueness => {:scope => [:pet_id, :cart_id]}
end
