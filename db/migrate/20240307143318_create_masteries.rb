class CreateMasteries < ActiveRecord::Migration[7.1]
  def change
    create_table :masteries do |t|
      t.boolean :mastered
      t.references :user, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
