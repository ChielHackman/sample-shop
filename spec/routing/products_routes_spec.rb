require 'rails_helper'

RSpec.describe "routes for Products", type: :routing do
  it "routes /electronics/product_id to products controller" do
    category = Category.create(name: 'Electronics')
    product = Product.create(category: category, name: 'Smart TV', price: 425)
    expect(get("/electronics/#{product.id}")).to route_to(controller: 'products', action: 'show', category_id: 'electronics', id: product.id.to_s)
  end
end
