class AddSenderIdToConversation < ActiveRecord::Migration[6.0]
  def change
    add_column :conversations, :sender_id, :integer
  end
end
