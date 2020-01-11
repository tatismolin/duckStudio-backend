class AddNewColumnToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :quantity, :integer
  end
end
