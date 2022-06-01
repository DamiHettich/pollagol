class AddMatchIdToBet < ActiveRecord::Migration[6.1]
  def change
    add_column :bets, :match_id, :integer
  end
end
