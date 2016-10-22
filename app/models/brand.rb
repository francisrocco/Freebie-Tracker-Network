class Brand < ApplicationRecord
  has_many :items
  belongs_to :business, class_name: 'User', foreign_key: 'business_id'

  validates_presence_of :name, :prestige, :location, :business
end
