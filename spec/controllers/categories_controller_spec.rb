require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  context "GET index" do
    it "assigns @products" do
      category = Category.create(name: 'Electronics')
      product = Product.create(category: category, name: 'SmartTV', price: 425)
      get :index
      expect(assigns(:products)).to eq([product])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  context "GET show" do
    let(:category) { Category.create(name: 'Electronics') }

    it "assigns @category" do
      get :show, params: { id: category.id }
      expect(assigns(:category)).to eq(category)
    end

    it "assigns @products" do
      product = Product.create(category: category, name: 'SmartTV', price: 425)
      get :show, params: { id: category.id }
      expect(assigns(:products)).to eq([product])
    end

    it "renders the show template" do
      get :show, params: { id: category.id }
      expect(response).to render_template("show")
    end

    it "has a 200 status code" do
      get :show, params: { id: category.id }
      expect(response.status).to eq(200)
    end
  end
end
