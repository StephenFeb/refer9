class AddSkillsToJob < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :skills, :text
  end
end
