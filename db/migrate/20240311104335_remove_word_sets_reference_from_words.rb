class RemoveWordSetsReferenceFromWords < ActiveRecord::Migration[7.1]
  def change
    remove_reference :words, :word_set, foreign_key: true
  end
end
