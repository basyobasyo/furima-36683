class ItemsController < ApplicationController

  before_action :move_log_in, only: [:new]

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def move_log_in
    unless user_signed_in?
      render("devise/sessions/new")
    end
  end

  def item_params
    params.require(:item).permit(:item_name,:item_explanation, :price, :category_id, :status_id, :shipping_fee_id, :prefecture_id, :days_to_ship_id, :image).merge(user_id: current_user.id)
  end

end
