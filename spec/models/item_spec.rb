require 'rails_helper'

RSpec.describe Item, type: :model  do
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:price) }
  it { is_expected.to respond_to(:quantity) }
  it { is_expected.to respond_to(:shelf_life_days) }
  it { is_expected.to respond_to(:stock_code) }

  describe Item do
    it "has a name, price, quantity, shelf life, stock code" do
      item = Item.new(name: "Eggs", price: 4, quantity: 12, shelf_life_days: 7, stock_code: "3GG2")
      expect(item).to be_valid
    end
  end

end
