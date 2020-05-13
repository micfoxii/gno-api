class AddLocationIdToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :location_id, :integer
  end
end
