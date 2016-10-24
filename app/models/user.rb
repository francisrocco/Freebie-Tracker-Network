class User < ApplicationRecord
  has_many :user_items
  has_many :items, through: :user_items
  has_many :brands, foreign_key: 'business_id' #, optional: true

  validates_presence_of :name, :password, :email

  has_secure_password

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
