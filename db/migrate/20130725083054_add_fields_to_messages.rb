class AddFieldsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_id, :integer
    add_column :messages, :recipient_id, :integer
  end
end
