class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  
  validates :item_name       , presence: true
  validates :item_explanation, presence: true
  validates :price           , presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, only_integer: true }
  validates :image           , presence: true

  validates :category_id    , numericality: { other_than: 1 } 
  validates :shipping_fee_id, numericality: { other_than: 1 } 
  validates :status_id      , numericality: { other_than: 1 } 
  validates :prefecture_id  , numericality: { other_than: 1 } 
  validates :days_to_ship_id, numericality: { other_than: 1 } 

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
