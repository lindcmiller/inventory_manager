
class Item < ActiveRecord::Base
  belongs_to :category
  validates :name, :price, :quantity, :shelf_life_days, :stock_code, :presence => true

  def expires
    Date.today + shelf_life_days.days
  end

  def self.not_expired
    all.select{ |item| item.expires > Date.today }
  end
end
