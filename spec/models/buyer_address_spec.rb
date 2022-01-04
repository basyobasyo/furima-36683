require 'rails_helper'

RSpec.describe BuyerAddress, type: :model do

  before do
    @buyer_address = FactoryBot.build(:buyer_address)
    # number    {4242424242424242}
    # exp_month = 3
    # exp_year  = 23
    # cvc       = 123
  end

  describe '商品購入機能' do
    context '商品購入が出来る場合' do
      it '商品購入情報が全て正しく入力されている' do
        expect(@buyer_address).to be_valid?
      end
    end
  end
end
