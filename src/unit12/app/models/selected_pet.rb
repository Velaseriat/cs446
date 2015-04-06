class SelectedPet < ActiveRecord::Base
  belongs_to :pet
  belongs_to :cart
  after_save :make_pet_unavailable
  after_destroy :make_pet_available
  #validates :pet, presence: true
  #validates :cart, presence: true
  #validates :selected_pet, :uniqueness => {:scope => [:pet_id, :cart_id]}

  def make_pet_unavailable
  	pet = Pet.find(self.pet_id)
  	pet.pet_status = :selected
  	pet.save
  end

  def make_pet_available
  	pet = Pet.find(self.pet_id)
  	pet.pet_status = :available
  	pet.save
  end
end
