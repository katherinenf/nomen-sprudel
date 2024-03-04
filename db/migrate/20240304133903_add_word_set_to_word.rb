class AddWordSetToWord < ActiveRecord::Migration[7.1]
  def change
    add_reference :words, :word_set, foreign_key: true
  end
end
