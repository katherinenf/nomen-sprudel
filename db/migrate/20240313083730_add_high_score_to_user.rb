class AddHighScoreToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :high_score, :integer, default: 0
  end
end
