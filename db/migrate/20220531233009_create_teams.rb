class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :description
      t.integer :championships
      t.integer :year_funded

      t.timestamps
    end
  end
end
