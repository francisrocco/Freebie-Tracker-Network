class User < ApplicationRecord
  attr_reader :brand_name, :brand_prestige, :brand_location
  has_many :user_items
  has_many :items, through: :user_items
  has_many :brands, foreign_key: 'business_id'

  validates_presence_of :name, :password, :email

  has_secure_password

  def brand_name=(brand_name)
    @brand_name = brand_name
  end

  def brand_prestige=(brand_prestige)
    @brand_prestige = brand_prestige
  end

  def brand_location=(brand_location)
    @brand_location = brand_location
  end

  def status_level
    return "Total Freebie Pro" if total_market_value > 500
    return "Freebie Novice" if total_market_value > 250
    return "Newbie" if total_market_value > 0
  end

  def total_market_value
    total = 0
    self.items.each do |item|
      total += item.market_value
    end
    total
  end

end
