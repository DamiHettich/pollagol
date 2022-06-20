class AddPointsToBets < ActiveRecord::Migration[6.1]
  def change
    add_column :bets, :points, :integer
  end
end
