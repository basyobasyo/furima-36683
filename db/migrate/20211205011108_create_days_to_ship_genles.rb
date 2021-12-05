class CreateDaysToShipGenles < ActiveRecord::Migration[6.0]
  def change
    create_table :days_to_ship_genles do |t|

      t.timestamps
    end
  end
end
