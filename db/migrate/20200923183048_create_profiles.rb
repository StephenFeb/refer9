class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :job_title
      t.text :work_experience
      t.text :skills

      t.timestamps
    end
  end
end
