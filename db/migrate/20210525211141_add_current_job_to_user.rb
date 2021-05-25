class AddCurrentJobToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :current_job, :string
  end
end
