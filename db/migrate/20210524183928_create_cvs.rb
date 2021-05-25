class CreateCvs < ActiveRecord::Migration[6.0]
  def change
    create_table :cvs do |t|
      t.string :title
      t.string :resume

      t.timestamps
    end
  end
end
