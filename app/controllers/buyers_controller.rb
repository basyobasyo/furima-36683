class BuyersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @buyer_address = BuyerAddress.new(buyer_params)
  end

  def create
    if @buyer_address.valid?
      @buyer_address.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def buyer_params
    params.require(:buyer_address).permit(:postal_code, :prefecture, :municipalities, :address, :building, :telephone_number).merge(user_id: current_user.id, item_id: @item.id)
  end
end
