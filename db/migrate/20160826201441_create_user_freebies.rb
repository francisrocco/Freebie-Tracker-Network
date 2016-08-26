class CreateUserFreebies < ActiveRecord::Migration[5.0]
  def change
    create_table :user_freebies do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :freebie, foreign_key: true

      t.timestamps
    end
  end
end
