class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :prestige
      t.string :location
      t.integer :business_id

      t.timestamps
    end
  end
end
