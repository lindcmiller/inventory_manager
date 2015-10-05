class AddStockCodeToItems < ActiveRecord::Migration
  def change
    add_column :items, :stock_code, :string
  end
end
