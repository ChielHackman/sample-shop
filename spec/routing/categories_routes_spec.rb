require 'rails_helper'

RSpec.describe "routes for Categories", type: :routing do
  it "routes / to categories controller" do
    expect(get("/")).to route_to("categories#index")
  end

  it "routes /electronics to categories controller" do
    category = Category.create(name: 'Electronics')
    expect(get("/electronics")).to route_to("categories#show", id: 'electronics')
  end
end
