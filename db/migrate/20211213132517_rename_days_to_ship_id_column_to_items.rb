class RenameDaysToShipIdColumnToItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :days_to_ship_id, :daystoship_id
  end
end
