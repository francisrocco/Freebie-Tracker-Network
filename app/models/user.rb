class User < ApplicationRecord
  has_many :user_freebies
  has_many :freebies, through: :user_freebies
  has_many :brands, through: :freebies

  def status_level
    return "Total Freebie Pro" if total_market_value > 500
    return "Freebie Novice" if total_market_value > 250
    return "Newbie" if total_market_value > 0
  end

  def total_market_value
    total = 0
    self.freebies.each do |freebie|
      total += freebie.market_value
    end
    total
  end

end
