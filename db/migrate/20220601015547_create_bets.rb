class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.integer :home_goals
      t.integer :visitor_goals

      t.timestamps
    end
  end
end
