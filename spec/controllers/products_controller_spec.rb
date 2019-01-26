require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  context "GET show" do
    let(:category) { Category.create(name: 'Electronics') }
    let(:product) { Product.create(category: category, name: 'Smart TV', price: 425) }

    it "assigns @product" do
      get :show, params: { id: product.id }
      expect(assigns(:product)).to eq(product)
    end

    it "renders the show template" do
      get :show, params: { id: product.id }
      expect(response).to render_template("show")
    end

    it "has a 200 status code" do
      get :show, params: { id: product.id }
      expect(response.status).to eq(200)
    end
  end
end
