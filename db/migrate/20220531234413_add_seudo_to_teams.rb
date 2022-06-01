class AddSeudoToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :seudo, :string
  end
end
