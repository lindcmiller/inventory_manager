require 'rails_helper'

RSpec.describe Item, type: :model  do
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:price) }
  it { is_expected.to respond_to(:quantity) }
  it { is_expected.to respond_to(:shelf_life_days) }
  it { is_expected.to respond_to(:stock_code) }

  # describe "complete item" do
  #   subject(:item) { build(:item) }
  #   it "has a name, price, quantity, shelf life, stock code" do
  #     expect(item).to be_valid
  #     expect(item.name).to be_a(String)
  #     expect(item.price).to be_a(Integer)
  #     expect(item.quantity).to be_a(Integer)
  #     expect(item.shelf_life_days).to be_a(Integer)
  #     expect(item.stock_code).to be_a(String)
  #   end
  # end

  # describe "#search" do
  #   let(:item) { create(:item) }
  #   it "finds an item by search form" do
  #     item
  #     items = Item.all
  #     found = items.search("Eggs")
  #     expect(found.any? {|h| h[:name] == "Eggs"}).to be_truthy
  #   end
  #     it "searches for an item and doesn't find it" do
  #     item
  #     items = Item.all
  #     found = items.search("Shoes")
  #     expect(found.any? {|h| h[:name] == "Shoes"}).to be_falsey
  #   end
  # end

  # describe "#not_expired" do
  #   let(:item) { create(:item) }
  #   it "lists unexpired items" do
  #     item
  #     items = Item.all
  #     found = items.not_expired
  #     expect(found.count).to eq(1)
  #   end
  #   it "does not include expired items" do
  #     item
  #     item.shelf_life_days = -1
  #     item.save
  #     items = Item.all
  #     found = items.not_expired
  #     expect(found.count).to eq(0)
  #   end
  # end

end
