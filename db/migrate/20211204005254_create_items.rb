class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      t.string        :item_name
      t.text          :item_explanation
      t.integer       :price
      t.integer        :category_id
      t.integer       :status_id
      t.integer       :shipping_fee_id
      t.integer       :prefecture_id
      t.integer       :days_to_ship_id
      t.references    :user, foreign_key: true

      t.timestamps
    end
  end
end
