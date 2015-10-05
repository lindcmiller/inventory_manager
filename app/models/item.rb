class Item < ActiveRecord::Base
  belongs_to :category
  validates :name, :price, :quantity, :shelf_life_days, :presence => true

  def expires
    Date.today + shelf_life_days.days
  end
end
