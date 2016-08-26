class CreateFreebies < ActiveRecord::Migration[5.0]
  def change
    create_table :freebies do |t|
      t.string :name
      t.integer :market_value
      t.belongs_to :brand, foreign_key: true

      t.timestamps
    end
  end
end
