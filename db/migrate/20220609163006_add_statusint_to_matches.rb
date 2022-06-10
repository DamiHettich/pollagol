class AddStatusintToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :status_enum, :integer
  end
end
