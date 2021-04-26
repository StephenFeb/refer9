class AddUserIdToOrganisations < ActiveRecord::Migration[6.0]
  def change
    add_column :organisations, :user_id, :integer
  end
end
