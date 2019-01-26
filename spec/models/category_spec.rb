require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validate presence of name" do
    it "throws an error" do
      category = Category.new
      category.name = ''
      category.save
      expect(category.errors[:name]).to include("can't be blank")
    end

    it "throws no error" do
      category = Category.new
      category.name = 'Electronics'
      category.save
      expect(category.errors[:name]).to eq([])
    end
  end
end
