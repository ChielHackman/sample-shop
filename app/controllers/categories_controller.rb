class CategoriesController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @category = Category.friendly.find(params[:id])
    @products = @category.products
  end
end
