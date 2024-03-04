class CreateWords < ActiveRecord::Migration[7.1]
  def change
    create_table :words do |t|
      t.string :english
      t.string :german
      t.string :article

      t.timestamps
    end
  end
end
