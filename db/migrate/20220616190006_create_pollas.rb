class CreatePollas < ActiveRecord::Migration[6.1]
  def change
    create_table :pollas do |t|
      t.string :name
      t.string :description
      t.integer :exact_goals_points
      t.integer :winner_points

      t.timestamps
    end
  end
end
