class ChangeSuccessesDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default :masteries, :successes, 0
  end
end
