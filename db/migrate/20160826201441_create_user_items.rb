class CreateUserItems < ActiveRecord::Migration[5.0]
  def change
    create_table :user_items do |t|
      t.belongs_to :user, foreign_key: true, optional: true
      t.belongs_to :item, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
