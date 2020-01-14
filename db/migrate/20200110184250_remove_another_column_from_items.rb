class RemoveAnotherColumnFromItems < ActiveRecord::Migration[6.0]
  def change

    remove_column :items, :quantity, :string
  end
end
