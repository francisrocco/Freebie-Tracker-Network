require "rails_helper"
require 'byebug'

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

  context 'relationships' do
    it 'a user can have many items' do
      alex = User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
      brand = Brand.create(name: "William-Sonoma", prestige: 4, location: "123 Mulberry Street", business: alex)
      item_1 = Item.create(name: "cat mug", market_value: 20, brand_id: brand.id)
      item_2 = Item.create(name: "lotion", market_value: 20, brand_id: brand.id)
      got_it_1 = UserItem.create(user_id: alex.id, item_id: item_1.id)
      got_it_2 = UserItem.create(user_id: alex.id, item_id: item_2.id)
      
      expect(alex.items.first).to eq(item_1)
      expect(alex.items.last).to eq(item_2)
    end
  end
end
