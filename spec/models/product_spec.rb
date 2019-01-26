require 'rails_helper'

RSpec.describe Product, type: :model do
  context "validation" do
    let(:category) {Category.create(name: "Electronics")}

    it "throws an error if category is not present" do
      product = Product.create(name: 'Smart TV', price: 425)
      expect(product.errors.messages).to eq(:category => ["must exist", "can't be blank"])
    end

    it "throws an error if name is not present" do
      product = Product.create(category: category, price: 425)
      expect(product.errors.messages).to eq(:name => ["can't be blank"])
    end

    it "throws an error if price is not present" do
      product = Product.create(category: category, name: "Smart TV")
      expect(product.errors.messages).to eq(:price => ["can't be blank"])
    end

    it "throws no errors" do
      product = Product.create(category: category, name: "Smart TV", price: 425)
      expect(product.errors.messages).to eq({})
    end
  end
end
