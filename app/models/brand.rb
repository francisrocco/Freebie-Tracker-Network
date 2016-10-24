class Brand < ApplicationRecord
  has_many :items
  belongs_to :business, class_name: 'User', foreign_key: 'business_id'

  validates_presence_of :name, :prestige, :location, :business

  has_attached_file :brand_image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :brand_image, content_type: /\Aimage\/.*\z/

end
