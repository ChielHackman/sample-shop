require "rails_helper"

describe "categories/show.html.haml" do
  context "with 2 products" do
    category = Category.create(name: 'Electronics')
    before(:each) do
      assign(:category, category)
      assign(:products, [
        Product.create(category: category, name: "Smart TV", price: 425),
        Product.create(category: category, name: "Smart Phone", price: 299.99)
      ])
    end

    it "displays the category name and both products" do
      render

      expect(rendered).to match /Electronics/
      expect(rendered).to match /Smart TV/
      expect(rendered).to match /Smart Phone/
    end
  end
end
