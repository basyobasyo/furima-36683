require 'rails_helper'

RSpec.describe BuyerAddress, type: :model do

  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.create(:item)
    @buyer_address = FactoryBot.build(:buyer_address, user_id: @user.id, item_id: @item.id)
  end

  describe '商品購入機能' do
    context '商品購入が出来る場合' do
      it '商品購入情報が全て正しく入力されている' do
        expect(@buyer_address).to be_valid
      end
    end
  end
end
