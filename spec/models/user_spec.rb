require "rails_helper"

RSpec.describe User, :type => :model do

  context 'validations' do
    it 'should be valid with a name, email, and password' do
      alex = User.new(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
      expect(alex).to be_valid
    end

    it 'should be invalid without name, email, and password' do
        invalid_1 = User.new(email: "alxsanborn@gmail.com", password: "1234")
        invalid_2 = User.new(name: "Alex", password: "1234")
        invalid_3 = User.new(name: "Alex", email: "alxsanborn@gmail.com")

        expect(invalid_1).to_not be_valid
        expect(invalid_2).to_not be_valid
        expect(invalid_3).to_not be_valid
    end
  end


  # context 'relationships' do
  #   it 'can have many items' do
  #     alex = User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
  #     brand = Brand.create(name: "William-Sonoma", prestige: 4, location: "123 Mulberry Street", business_id: alex_id)
  #     item_1 = Item.create(name: "cat mug", market_value: 20, brand_id: )
  #   end
  # end


end
