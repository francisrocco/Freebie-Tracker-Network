class Item < ApplicationRecord
  belongs_to :brand
  has_many :user_items
  has_many :users, through: :user_items

  has_attached_file :item_image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\z/
end
