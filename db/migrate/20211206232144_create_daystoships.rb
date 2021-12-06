class CreateDaystoships < ActiveRecord::Migration[6.0]
  def change
    create_table :daystoships do |t|

      t.timestamps
    end
  end
end
