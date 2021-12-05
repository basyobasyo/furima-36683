class CreateStatusGenles < ActiveRecord::Migration[6.0]
  def change
    create_table :status_genles do |t|

      t.timestamps
    end
  end
end
