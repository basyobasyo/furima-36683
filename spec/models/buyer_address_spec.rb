require 'rails_helper'

RSpec.describe BuyerAddress, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.create(:item)
    @buyer_address = FactoryBot.build(:buyer_address, user_id: @user.id, item_id: @item.id)
    sleep 0.1
  end

  describe '商品購入機能' do
    context '商品購入が出来る場合' do
      it '商品購入情報が全て正しく入力されている' do
        expect(@buyer_address).to be_valid
      end
    end
    context '商品購入が出来ない場合' do
      it 'tokenが空である場合' do
        @buyer_address.token = ''
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("Token can't be blank")
      end
      it 'postal_codeが空の場合' do
        @buyer_address.postal_code = ''
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("Postal code can't be blank")
      end
      it 'postal_codeにハイフンが含まれていないと登録が出来ない' do
        @buyer_address.postal_code = '1234567'
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include('Postal code is invalid. Include hyphen(-)')
      end
      it 'prefecture_idが空の場合' do
        @buyer_address.prefecture_id = ''
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'prefecture_idが数字以外の場合' do
        @buyer_address.prefecture_id = 'あ'
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include('Prefecture is not a number')
      end
      it 'prefecture_idが1の場合' do
        @buyer_address.prefecture_id = 1
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include('Prefecture must be other than 1')
      end
      it 'municipalitiesが空の場合' do
        @buyer_address.municipalities = ''
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("Municipalities can't be blank")
      end
      it 'addressが空の場合' do
        @buyer_address.address = ''
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("Address can't be blank")
      end
      it 'telephone_numberが空の場合' do
        @buyer_address.telephone_number = ''
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("Telephone number can't be blank")
      end
      it 'telephone_numberが数字以外の場合' do
        @buyer_address.telephone_number = '-'
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include('Telephone number is not a number')
      end
      it 'userと紐づいていない場合' do
        @buyer_address.user_id = nil
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("User can't be blank")
      end
      it 'itemと紐づいていない場合' do
        @buyer_address.item_id = nil
        @buyer_address.valid?
        expect(@buyer_address.errors.full_messages).to include("Item can't be blank")
      end
    end
  end
end
