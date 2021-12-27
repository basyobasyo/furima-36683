class BuyerAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture_id, :municipalities, :address, :building, :telephone_number, :user_id, :item_id, :buyer_id

  # ここにバリデーションの記述を行う
  
  def save
    buyer = Buyer.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, municipalities: municipalities, address: address, building: building, telephone_number: telephone_number, buyer_id: buyer.id)
  end

end