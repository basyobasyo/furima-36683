class CreatePrefectureGenles < ActiveRecord::Migration[6.0]
  def change
    create_table :prefecture_genles do |t|

      t.timestamps
    end
  end
end
