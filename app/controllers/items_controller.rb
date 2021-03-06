class ItemsController < ApplicationController
  def home
    @item = Item.new
    @items = Item.search(params[:search]).not_expired
  end

  def create
    @item = Item.create(item_params)
    if !@item.save
      flash[:error] = "Invalid"
    end
    redirect_to :root
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to :root
  end

  private

  def item_params
    params[:item].permit(:name, :price, :quantity, :shelf_life_days, :category_id, :stock_code)
  end
end
