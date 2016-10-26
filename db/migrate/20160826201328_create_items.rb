class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :market_value
      t.string :gimmick
      t.integer :brand_id

      t.timestamps
    end
  end
end
