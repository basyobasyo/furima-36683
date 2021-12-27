class BuyerAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture_id, :municipalities, :address, :building, :telephone_number, :user_id, :item_id, :buyer_id

  # ここにバリデーションの記述を行う

end