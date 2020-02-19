class CreateUserItems < ActiveRecord::Migration[6.0]
  def change
    create_table :user_items do |t|
      t.references :user, foreign_key: true 
      t.references :item, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
