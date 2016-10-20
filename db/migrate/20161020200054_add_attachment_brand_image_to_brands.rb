class AddAttachmentBrandImageToBrands < ActiveRecord::Migration
  def self.up
    change_table :brands do |t|
      t.attachment :brand_image
    end
  end

  def self.down
    remove_attachment :brands, :brand_image
  end
end
