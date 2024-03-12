class AddSuccessesToMasteries < ActiveRecord::Migration[7.1]
  def change
    add_column :masteries, :successes, :integer
  end
end
