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

    
  end 
end
