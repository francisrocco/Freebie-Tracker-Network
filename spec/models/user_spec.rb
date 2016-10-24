require "rails_helper"
require 'byebug'

RSpec.describe User, :type => :model do
  let(:alex) {User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")}
  let(:brand) {Brand.create(name: "William-Sonoma", prestige: 4, location: "123 Mulberry Street", business: alex)}
  let(:item_1) {Item.create(name: "cat mug", market_value: 20, brand_id: brand.id)}
  let(:item_2) {Item.create(name: "lotion", market_value: 20, brand_id: brand.id)}

  context 'validations' do
    it 'should be valid with a name, email, and password' do
      expect(alex).to be_valid
    end

    it 'can be created without a brand' do
      clay = User.create(name: "Clay", email: "clay@gmail.com", password: "1234")
      expect(clay).to be_valid
    end

    it 'a business user knows its brands' do
      expect(alex.brands.first).to eq(brand)
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
      UserItem.create(user_id: alex.id, item_id: item_1.id)
      UserItem.create(user_id: alex.id, item_id: item_2.id)
      expect(alex.items.first).to eq(item_1)
      expect(alex.items.last).to eq(item_2)
    end
  end

  context 'method tests' do
    it 'calculates total market value of all freebies that a user has collected and recognizes status level' do
      UserItem.create(user_id: alex.id, item_id: item_1.id)
      UserItem.create(user_id: alex.id, item_id: item_2.id)
      total = alex.total_market_value
      status = alex.status_level

      expect(total).to eq(40)
      expect(status).to eq("Newbie")
    end
  end
end
