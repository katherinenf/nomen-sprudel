class CreateJoinTableWordSetWord < ActiveRecord::Migration[7.1]
  def change
    create_join_table :word_sets, :words do |t|
      # t.index [:word_set_id, :word_id]
      # t.index [:word_id, :word_set_id]
    end
  end
end
