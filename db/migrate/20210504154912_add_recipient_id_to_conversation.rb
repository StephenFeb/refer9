class AddRecipientIdToConversation < ActiveRecord::Migration[6.0]
  def change
    add_column :conversations, :recipient_id, :integer
  end
end
