class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :home_id
      t.integer :vis_id
      t.integer :home_goals
      t.integer :vis_goals
      t.datetime :start_time
      t.string :status

      t.timestamps
    end
  end
end
