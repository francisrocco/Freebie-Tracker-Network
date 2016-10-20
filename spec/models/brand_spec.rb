require "rails_helper"

RSpec.describe Brand, :type => :model do
  context do 'validations'
    it 'is valid with a name, prestige level, location, and user' do
      alex = User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
      brand = Brand.new(name: "Apple", prestige: 5, location: "Apple Store Location", business: alex)
      expect(brand).to be_valid
      expect(brand.business.name).to eq('Alex')
    end

    it 'is not valid without name, prestige level, location, and user' do
      alex = User.create(name: "Alex", email: "alxsanborn@gmail.com", password: "1234")
      invalid_1 = Brand.new(name: "Apple", location: "Apple Store Location", business: alex)
      invalid_2 = Brand.new(prestige: 5, location: "Apple Store Location", business: alex)
      invalid_3 = Brand.new(name: "Apple", prestige: 5, business: alex)
      invalid_4 = Brand.new(name: "Apple", prestige: 5, location: "Apple Store Location")

      expect(invalid_1).to_not be_valid
      expect(invalid_2).to_not be_valid
      expect(invalid_3).to_not be_valid
      expect(invalid_4).to_not be_valid
    end
  end
end
