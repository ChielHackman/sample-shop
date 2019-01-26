require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validation" do
    it "throws an error if name is nog present" do
      category = Category.create
      expect(category.errors.messages).to eq(:name => ["can't be blank"])
    end

    it "throws no error" do
      category = Category.create(name: "Electronics")
      expect(category.errors.messages).to eq({})
    end
  end
end
