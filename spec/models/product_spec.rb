require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "doesn't allow a product's name to be nil" do
  	macbook = FactoryGirl.build(:product, name: nil)
  	expect(macbook).to_not be_valid
  end
  it "doesn't allow a product's quantity to be nil" do
  	macbook = FactoryGirl.build(:product, quantity: nil)
  	expect(macbook).to_not be_valid
  end
    it "doesn't allow a product's quantity to be negative" do
  	macbook = FactoryGirl.build(:product, quantity: -1)
  	expect(macbook).to_not be_valid
  end
end
