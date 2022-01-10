require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do
      @category = Category.new(id: 1, name: "Hobby")
      @product = Product.new(id: 1, name:"DnD Giant Dice", price_cents: 5000, quantity: 100, category: @category)
    end 

    it "is valid with valid attributes" do
      expect(@product).to be_valid
    end 

    it "should have a valid product name" do
      @product.name = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end

    it "should have a valid product price" do
      @product.price_cents = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end

    it "should have a valid product quantity" do
      @product.quantity = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end

    it "should have a valid product category" do
      @product.category = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end
      
  end 
end
