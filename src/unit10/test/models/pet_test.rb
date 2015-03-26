require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'a pet with no attributes is not valid' do
  	pet = Pet.new
  	assert !pet.save, 'Saved a pet with no attributes.'
  end

  test 'pet attributes must not be empty' do
  	pet = Pet.new
  	assert pet.invalid?
  	assert pet.errors[:name].any?
  end

  test 'a pet with no name is not valid' do
  	pet = Pet.new(name: pets(:noname).name, age: pets(:noname).age, description: pets(:noname).description)
  	assert pet.invalid?
  	assert pet.errors[:name].any?
  	assert_equal [I18n.translate('errors.messages.blank')],pet.errors[:name]
  	puts pet.errors.messages
  end

  test 'a pet with 10 chars description' do
  	pet = Pet.new(name: pets(:description10).name, age: pets(:description10).age, description: pets(:description10).description)
  	assert !pet.invalid?
  	assert !pet.errors[:description].any?
  	puts pet.errors.messages
  end

  test 'a pet with 40 chars description' do
  	pet = Pet.new(name: pets(:description40).name, age: pets(:description40).age, description: pets(:description40).description)
  	assert !pet.invalid?
  	assert !pet.errors[:description].any?
  	puts pet.errors.messages
  end

  test 'a pet with 9 chars description' do
  	pet = Pet.new(name: pets(:description9).name, age: pets(:description9).age, description: pets(:description9).description)
  	assert pet.invalid?
  	assert pet.errors[:description].any?
  	puts pet.errors.messages
  end

  test 'a pet with 41 chars description' do
  	pet = Pet.new(name: pets(:description41).name, age: pets(:description41).age, description: pets(:description41).description)
  	assert pet.invalid?
  	assert pet.errors[:description].any?
  	puts pet.errors.messages
  end

end
