class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :name
      t.string :subject
      t.integer :score

      t.timestamps
    end
  end
end
