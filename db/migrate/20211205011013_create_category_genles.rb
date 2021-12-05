class CreateCategoryGenles < ActiveRecord::Migration[6.0]
  def change
    create_table :category_genles do |t|

      t.timestamps
    end
  end
end
