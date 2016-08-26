class Brand < ApplicationRecord
  has_many :freebies
  has_many :users, through: :freebies
end
