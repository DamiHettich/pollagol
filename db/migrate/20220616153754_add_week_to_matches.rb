class AddWeekToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :week_nr, :integer
  end
end
