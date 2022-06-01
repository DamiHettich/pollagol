class AddUserIdToBet < ActiveRecord::Migration[6.1]
  def change
    add_column :bets, :user_id, :integer
  end
end
