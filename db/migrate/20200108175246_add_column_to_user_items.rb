class AddColumnToUserItems < ActiveRecord::Migration[6.0]
  def change
    add_column :user_items, :quantity, :integer
  end
end
