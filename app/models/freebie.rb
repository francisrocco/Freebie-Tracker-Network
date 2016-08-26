class Freebie < ApplicationRecord
  belongs_to :brand
  has_many :user_freebies
  has_many :users, through: :user_freebies
end
