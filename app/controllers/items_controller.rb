class ItemsController < ApplicationController
  def home
    @item = Item.new
    @items = Item.all
  end

  def create
    @item = Item.create(item_params)
    if !@item.save
      flash[:error] = "Invalid"
    end
    redirect_to :root
  end

  def destroy

  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days, :stock_code)
  end
end
