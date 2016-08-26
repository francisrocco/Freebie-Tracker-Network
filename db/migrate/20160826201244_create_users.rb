class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :status, :default => 1
      t.boolean :admin, :default => false
      t.string :password_digest

      t.timestamps
    end
  end
end
