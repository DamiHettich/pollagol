class AddPollaIdToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :polla_id, :integer
  end
end
