require "rails_helper"

describe "categories/index.html.haml" do
  context "with 2 products" do
    category = Category.create(name: 'Electronics')
    before(:each) do
      assign(:products, [
        Product.create(category: category, name: "Smart TV", price: 425),
        Product.create(category: category, name: "Smart Phone", price: 299.99)
      ])
    end

    it "displays both products" do
      render

      expect(rendered).to match /Smart TV/
      expect(rendered).to match /425/
      expect(rendered).to match /Smart Phone/
      expect(rendered).to match /299.99/
    end
  end
end
