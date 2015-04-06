class Pet < ActiveRecord::Base
	has_many :selected_pets
	before_destroy :ensure_not_selected

	mount_uploader :image_file, AttachmentUploader

	enum pet_type: [ :cat, :dog, :bunny ]
	enum pet_status: [ :adopted, :available, :selected ]
	validates :name, presence: true
	validates :description, length: { in: 10..40 }
	# validates :image_file, allow_blank: true, format: {
 #      with: %r{\.(gif|jpg|png)\Z}i,
 #      message: 'format must be GIF, JPG or PNG'
 #  }

	def Pet.get_available_pets
		Pet.where(pet_status: 1)
	end

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
