class Pet < ActiveRecord::Base
	has_many :selected_pets
	before_destroy :ensure_not_selected

	enum pet_type: [ :cat, :dog, :bunny ]
	enum pet_status: [ :adopted, :available, :selected ]
	validates :name, presence: true
	validates :description, length: { in: 10..40 }


	private 
	
	def ensure_not_selected
		if selected_pets.empty?
			return true
		else
			errors.add(:base, 'Pet has already been selected')
			return false
		end
	end
end
