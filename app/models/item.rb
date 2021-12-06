class Item < ApplicationRecord
  
  validates :category_id, numericality: { other_than: 1 } 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shippingfee

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :daystoship

end
