class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
