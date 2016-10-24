require "rails_helper"

RSpec.describe Item, :type => :model do
  context "validations" do
    it 'is valid with name, market value, gimmick, and brand' do
         alex = User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
         brand = Brand.create(name: "Apple", prestige: 5, location: "Apple Store Location", business: alex)
         item_1 = Item.new(name: "iPad", market_value: 500, gimmick: "buy one get one free", brand_id: brand.id)

         expect(item_1).to be_valid
    end
  end

end
