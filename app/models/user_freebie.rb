class UserFreebie < ApplicationRecord
  belongs_to :user
  belongs_to :freebie
end
