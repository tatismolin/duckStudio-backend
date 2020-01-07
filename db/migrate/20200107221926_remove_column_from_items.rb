class RemoveColumnFromItems < ActiveRecord::Migration[6.0]
  def change

    remove_column :items, :user_id, :string
  end
end
